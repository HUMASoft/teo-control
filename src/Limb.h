#ifndef LIMB_H
#define LIMB_H

#include "Cia402device.h"
#include "SocketCanPort.h"

class Limb
{
public:
    Limb(string actualPort);
    long setPositions(vector<double> jointAngles);
    long setPositionMode();
private:
    std::vector <CiA402Device> Joints;
    std::vector <SocketCanPort> Ports;
};

#endif // LIMB_H
