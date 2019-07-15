.class public Lcom/phicomm/speaker/bean/VoiceCommandBean;
.super Ljava/lang/Object;
.source "VoiceCommandBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private command_id:I

.field private command_words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private icon_url:Ljava/lang/String;

.field private skill_introduction:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommand_id()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->command_id:I

    return v0
.end method

.method public getCommand_words()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->command_words:Ljava/util/List;

    return-object v0
.end method

.method public getIcon_url()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->icon_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSkill_introduction()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->skill_introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand_id(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->command_id:I

    return-void
.end method

.method public setCommand_words(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->command_words:Ljava/util/List;

    return-void
.end method

.method public setIcon_url(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->icon_url:Ljava/lang/String;

    return-void
.end method

.method public setSkill_introduction(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->skill_introduction:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceCommandBean{command_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->command_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", icon_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->icon_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", skill_introduction=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->skill_introduction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", command_words="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/bean/VoiceCommandBean;->command_words:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
