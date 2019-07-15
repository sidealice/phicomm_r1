.class public Lcom/unisound/lib/push/mqtt/bean/ClientInfo;
.super Ljava/lang/Object;


# instance fields
.field private appKey:Ljava/lang/String;

.field private extras:Ljava/lang/String;

.field private passportId:J

.field private subsystemId:I

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->extras:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportId()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->passportId:J

    return-wide v0
.end method

.method public getSubsystemId()I
    .locals 1

    iget v0, p0, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->subsystemId:I

    return v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->extras:Ljava/lang/String;

    return-void
.end method

.method public setPassportId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->passportId:J

    return-void
.end method

.method public setSubsystemId(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->subsystemId:I

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/mqtt/bean/ClientInfo;->udid:Ljava/lang/String;

    return-void
.end method
