#ifndef LIBSOCKET_H
#define LIBSOCKET_H

#include <QTcpServer>
#include <QTcpSocket>
#include <QThread>


namespace libs {


class LibSocket : public QObject
{
    Q_OBJECT

public:
    LibSocket();


    QTcpSocket *socket;
    QTcpServer *server;
    QThread    *thread;

signals:

    void Create();

};
}

#endif // LIBSOCKET_H
