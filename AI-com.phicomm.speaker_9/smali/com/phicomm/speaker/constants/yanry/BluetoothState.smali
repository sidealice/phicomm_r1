.class public final enum Lcom/phicomm/speaker/constants/yanry/BluetoothState;
.super Ljava/lang/Enum;
.source "BluetoothState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/phicomm/speaker/constants/yanry/BluetoothState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/constants/yanry/BluetoothState;

.field public static final enum DISABLE:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

.field public static final enum ENABLE:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

.field public static final enum NOT_EXIST:Lcom/phicomm/speaker/constants/yanry/BluetoothState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    const-string v1, "NOT_EXIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/constants/yanry/BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->NOT_EXIST:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    .line 15
    new-instance v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    const-string v1, "DISABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/phicomm/speaker/constants/yanry/BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->DISABLE:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    .line 19
    new-instance v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    const-string v1, "ENABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/phicomm/speaker/constants/yanry/BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->ENABLE:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->NOT_EXIST:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->DISABLE:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->ENABLE:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->$VALUES:[Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/constants/yanry/BluetoothState;
    .locals 1

    .line 7
    const-class v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    return-object p0
.end method

.method public static values()[Lcom/phicomm/speaker/constants/yanry/BluetoothState;
    .locals 1

    .line 7
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->$VALUES:[Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/constants/yanry/BluetoothState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    return-object v0
.end method
