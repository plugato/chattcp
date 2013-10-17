#include "libsocket.h"
#include "threadconnect.h"


namespace libs {
LibSocket::LibSocket()
{
    server = new QTcpServer;
    socket = new QTcpSocket;
    thread = new QThread;

    ThreadConnect *NewConnect = new ThreadConnect;

    server->listen( QHostAddress::AnyIPv4);

    NewConnect->moveToThread(thread);
    qDebug("ss");

    thread->start();

    connect( this, &LibSocket::Create, NewConnect, &ThreadConnect::NewClient   );


}

}


