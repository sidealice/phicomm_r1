.class public final enum Lcom/phicomm/speaker/constants/yanry/ConnectionState;
.super Ljava/lang/Enum;
.source "ConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/phicomm/speaker/constants/yanry/ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/constants/yanry/ConnectionState;

.field public static final enum Connected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

.field public static final enum Connecting:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

.field public static final enum Disconnected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

.field public static final enum Disconnecting:Lcom/phicomm/speaker/constants/yanry/ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    const-string v1, "Connected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/constants/yanry/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Connected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    .line 11
    new-instance v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    const-string v1, "Disconnected"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/phicomm/speaker/constants/yanry/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Disconnected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    .line 13
    new-instance v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    const-string v1, "Connecting"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/phicomm/speaker/constants/yanry/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Connecting:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    .line 15
    new-instance v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    const-string v1, "Disconnecting"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/phicomm/speaker/constants/yanry/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Disconnecting:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Connected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Disconnected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Connecting:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Disconnecting:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->$VALUES:[Lcom/phicomm/speaker/constants/yanry/ConnectionState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/constants/yanry/ConnectionState;
    .locals 1

    .line 7
    const-class v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/phicomm/speaker/constants/yanry/ConnectionState;
    .locals 1

    .line 7
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->$VALUES:[Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/constants/yanry/ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    return-object v0
.end method
