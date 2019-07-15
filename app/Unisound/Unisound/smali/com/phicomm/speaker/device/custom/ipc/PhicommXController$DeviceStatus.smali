.class public final enum Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;
.super Ljava/lang/Enum;
.source "PhicommXController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

.field public static final enum BlueTooth:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

.field public static final enum ConnectNet:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

.field public static final enum Dormant:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

.field public static final enum Music:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

.field public static final enum Speech:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    const-string v1, "Speech"

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Speech:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    const-string v1, "Music"

    invoke-direct {v0, v1, v3}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Music:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    const-string v1, "ConnectNet"

    invoke-direct {v0, v1, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->ConnectNet:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    const-string v1, "BlueTooth"

    invoke-direct {v0, v1, v5}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->BlueTooth:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    const-string v1, "Dormant"

    invoke-direct {v0, v1, v6}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Dormant:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    sget-object v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Speech:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Music:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->ConnectNet:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->BlueTooth:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Dormant:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->$VALUES:[Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    return-object v0
.end method

.method public static values()[Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->$VALUES:[Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    return-object v0
.end method
