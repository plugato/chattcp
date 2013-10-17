#include "threadconnect.h"

namespace libs {
ThreadConnect::ThreadConnect(QObject *parent) :
    QObject(parent)
{


}

void ThreadConnect::NewClient(){
    qDebug("new thread");
}


}
