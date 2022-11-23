#include <QDebug>
#include <QOperatingSystemVersion>
#ifdef WIN32
// Windows code here
#else
// UNIX code here
#endif

int main()
{
    qDebug() << "currentCpuArchitecture():" << QSysInfo::currentCpuArchitecture();
    qDebug() << "productType():" << QSysInfo::productType();
    qDebug() << "productVersion():" << QSysInfo::productVersion();
    qDebug() << "prettyProductName():" << QSysInfo::prettyProductName();
}
