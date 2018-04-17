#include "Limb.h"

Limb::Limb(string actualPort)
{
    Joints.size(6);
    Ports.size(6);

    for(int i=0; i<6; i++){
        Ports[i]=SocketCanPort(actualPort);
    }
    for(int i=0; i<6; i++){
        Joints[i]=CiA402Device(i, &Ports[i]);
    }
}
long Limb::SetPositions(vector<double> jointAngles){

    for(int i=0; i<6; i++){
        Joints[i].SetPosition(jointAngles[i]);
    }
    return 0;
}

long Limb::SetupPositionMode(const uint32_t velocity,const uint32_t acceleration){
    for(int i=0; i<6; i++){
        Joints[i].SetupPositionMode(velocity, acceleration);
    }
    return 0;
}
