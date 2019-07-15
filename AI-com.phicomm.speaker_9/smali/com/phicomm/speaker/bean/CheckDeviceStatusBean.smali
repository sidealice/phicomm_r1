.class public Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;
.super Ljava/lang/Object;
.source "CheckDeviceStatusBean.java"


# instance fields
.field private bind_status:I

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBind_status()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;->bind_status:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;->timestamp:J

    return-wide v0
.end method

.method public setBind_status(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;->bind_status:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;->timestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckDeviceStatusBean{bind_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;->bind_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/phicomm/speaker/bean/CheckDeviceStatusBean;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
