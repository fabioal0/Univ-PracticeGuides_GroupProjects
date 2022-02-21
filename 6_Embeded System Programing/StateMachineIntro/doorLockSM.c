#include "doorLockSM.h"
#include "doorLock.h"
#include <stdbool.h>

/* Create the machine state data */
sm_t smDoorLock;
uint16_t time;
bool st = false;

/*
* State Machine execution
*/
void sm_execute(sm_t *stateMachinep)
{
    switch (stateMachinep->current_state) {
        case LockClosed:
            if(get_door_state() == DoorOpened){
                stateMachinep->current_state = UnlockOpen;
            }
            if (read_push_button() == PB_Pressed){
                st = true;
            }
            else if(st && read_push_button() == PB_Released){
                set_door_lock(DoorUnlocked);
                time = get_current_time();
                st = false;
                stateMachinep->current_state = UnlockClosed;
            }
            break;
        case UnlockClosed:
            if(get_current_time() - time == 5){
                if (get_door_state() == DoorClosed){
                    set_door_lock(DoorLocked);
                    stateMachinep->current_state = LockClosed;
                }
                else{
                    stateMachinep->current_state = UnlockOpen;
                }
            }
            break;
        case UnlockOpen:
            if (get_door_state() == DoorClosed){
                set_door_lock(DoorLocked);
                stateMachinep->current_state = LockClosed;
            }
            break;
    }
}

void sm_init(sm_t *stateMachinep)
{
  /* The following is a crude way of setting the initial state
     to the first state in the enum */
  stateMachinep->initial_state = (doorLockState_t) 0;
  stateMachinep->current_state = stateMachinep->initial_state;
}
