#include "mainwindow.h"
#include "ui_mainwindow.h"




MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);


    libs::LibSocket *libskt = new libs::LibSocket;


    connect( ui->pb_button, &QPushButton::clicked, libskt, &libs::LibSocket::Create  );
}

MainWindow::~MainWindow()
{
    delete ui;
}

