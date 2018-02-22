#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QTextEdit>
#include <QFileDialog>

#include "quazip.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    logEdit = ui->logEdit;
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_actionOpen_triggered(bool trig)
{
    Q_UNUSED(trig)

    logEdit->append("open file... test");

    m_fileName = QFileDialog::getOpenFileName(this,
                                              tr("Open Sigrok file"),
                                              "/",
                                              tr("Sigrok File (*.sr)"));

    logEdit->append("File name: " + m_fileName);

    QuaZip quazipFile(m_fileName);
    quazipFile.open(QuaZip::mdUnzip);
    logEdit->append("File list: " + quazipFile.getFileNameList().join(", "));
}
