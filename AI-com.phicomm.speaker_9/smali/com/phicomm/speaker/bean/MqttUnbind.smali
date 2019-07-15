.class public Lcom/phicomm/speaker/bean/MqttUnbind;
.super Ljava/lang/Object;
.source "MqttUnbind.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private status:I

.field private uid:Ljava/lang/String;

.field private unbind_by_other:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/phicomm/speaker/bean/MqttUnbind;->status:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/bean/MqttUnbind;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUnbind_by_other()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/phicomm/speaker/bean/MqttUnbind;->unbind_by_other:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/phicomm/speaker/bean/MqttUnbind;->status:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/bean/MqttUnbind;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUnbind_by_other(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/phicomm/speaker/bean/MqttUnbind;->unbind_by_other:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttUnbind{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/MqttUnbind;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unbind_by_other="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/MqttUnbind;->unbind_by_other:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/MqttUnbind;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
