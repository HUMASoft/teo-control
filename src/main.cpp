
#include<iostream>
#include <time.h>
#include <fstream>      // std::fstream
#include "DeviceChain.h"
#include "Cia402device.h"

#include <chrono>
//#include <ctime>

//#include "MiddlewareInterface.h"
//#include "LibraryInterface.h"
//#include "fpid.h"
//#include "fcontrol.h"
#include "IPlot.h"

//local functions
//int velocityCurve(double Ts, double vel, int jointNumber, MWI::Limb& robot, std::vector<double> &pos);
double linFilter(double sensorValue, double time);
double sqFilter(double sensorValue, double time);



using namespace std;

#define ROBOT "teo"
bool useRobot = true;

int main()
{

    SocketCanPort port("can0");
    CiA402Device joint(18,&port);

    //joint.StartNode();
    sleep(1);
    joint.SwitchOn();
    sleep(1);

    cout << "initial pos: " << joint.GetPosition() << endl;
    //joint.SetupPositionMode(1,1);
    //joint.SetPosition(5);

    sleep(1);

    cout  << "final pos: " << joint.GetPosition() << endl;




    //    vector <double> homepos(6,0);
//    vector<long> ids={15,16,17,18,19,20};
//    DeviceChain rightArm("can0",ids);
//    rightArm.SetPositions(homepos);


//    sleep(2);
//    homepos[3]=5;
//    rightArm.SetPositions(homepos);
//    sleep(2);

    /*if (useRobot)
    {
       // rightLeg = MWI::Limb(ROBOT,"rightLeg");
        if (rightLeg.GetError()!=0)
        {
            std::cout << "MWI::Limb rightLeg(\"rightLeg\") not available. ERROR: " << rightLeg.GetError() << std::endl;
            return -1;

        }
        rightLeg.SetControlMode(1);
        rightLeg.SetJointPositions(std::vector<double>{0,0,0,0,0,0});
        yarp::os::Time::delay(5);
        //rightLeg.DefaultPosition();
        //yarp::os::Time::delay(5);
        rightLeg.SetControlMode(2);



    }
    */

    //rightLeg.SetupPositionMode(1, 1);
    //setPositionsrightLeg.SetPositions(homepos);
    double Ts = 0.01;


//    //3rd order model sistem id matlab Ts=0.01
//    std::vector<double> motorNum(4,0);
//    motorNum[3]=0;
//    motorNum[2]=0.05005;
//    motorNum[1]=-0.09862;
//    motorNum[0]=0.04857;
//    std::vector<double> motorDen(4,0);
//    motorDen[3]=1.;
//    motorDen[2]=-2.83;
//    motorDen[1]=2.662;
//    motorDen[0]=-0.8317;
//    SystemBlock model(motorNum,motorDen);

    //plotters
    IPlot pt(Ts),vt(Ts),at(Ts);
    IPlot mpt(Ts),mvt(Ts),mat(Ts);
    IPlot ptTeo(Ts),vtTeo(Ts),atTeo(Ts);

    return 0;

}
