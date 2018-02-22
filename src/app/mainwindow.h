#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

namespace Ui {
class MainWindow;
}

class QTextEdit;

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

public slots:
    void on_actionOpen_triggered(bool trig);

private:
    Ui::MainWindow *ui;
    QTextEdit *logEdit;

    QString m_fileName;
};

#endif // MAINWINDOW_H
