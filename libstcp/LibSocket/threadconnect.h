#ifndef THREADCONNECT_H
#define THREADCONNECT_H

#include <QObject>


namespace libs {
class ThreadConnect : public QObject
{
    Q_OBJECT
public:
    explicit ThreadConnect(QObject *parent = 0);

signals:

public slots:
    void NewClient();

};
}

#endif // THREADCONNECT_H
