.class public Lcom/phicomm/speaker/bean/VoiceCommandsBean;
.super Ljava/lang/Object;
.source "VoiceCommandsBean.java"


# instance fields
.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/VoiceCommandBean;",
            ">;"
        }
    .end annotation
.end field

.field private has_next_page:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/VoiceCommandBean;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->commands:Ljava/util/List;

    return-object v0
.end method

.method public getHas_next_page()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->has_next_page:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->total:I

    return v0
.end method

.method public setCommands(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/VoiceCommandBean;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->commands:Ljava/util/List;

    return-void
.end method

.method public setHas_next_page(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->has_next_page:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceCommandsBean{commands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->commands:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", has_next_page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->has_next_page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
