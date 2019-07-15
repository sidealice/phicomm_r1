.class Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "SmartDeviceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->dispatchSmartHouseControlCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/unisound/ant/platform/smarthome/bean/SmartAction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;


# direct methods
.method constructor <init>(Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$1;->this$0:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
