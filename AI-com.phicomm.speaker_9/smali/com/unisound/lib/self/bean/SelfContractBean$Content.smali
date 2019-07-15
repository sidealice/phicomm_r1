.class public Lcom/unisound/lib/self/bean/SelfContractBean$Content;
.super Ljava/lang/Object;
.source "SelfContractBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/self/bean/SelfContractBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# instance fields
.field private currentAmbientLightStatus:I

.field private currentDormantStatus:I

.field private currentState:Ljava/lang/String;

.field private isLighting:Ljava/lang/String;

.field private ttsPlayer:Ljava/lang/String;

.field private udid:Ljava/lang/String;

.field private wakeUpWord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentAmbientLightStatus()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->currentAmbientLightStatus:I

    return v0
.end method

.method public getCurrentDormantStatus()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->currentDormantStatus:I

    return v0
.end method

.method public getCurrentState()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->currentState:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLighting()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->isLighting:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsPlayer()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->ttsPlayer:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeUpWord()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->wakeUpWord:Ljava/util/List;

    return-object v0
.end method

.method public setCurrentAmbientLightStatus(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->currentAmbientLightStatus:I

    return-void
.end method

.method public setCurrentDormantStatus(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->currentDormantStatus:I

    return-void
.end method

.method public setCurrentState(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->currentState:Ljava/lang/String;

    return-void
.end method

.method public setIsLighting(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->isLighting:Ljava/lang/String;

    return-void
.end method

.method public setTtsPlayer(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->ttsPlayer:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->udid:Ljava/lang/String;

    return-void
.end method

.method public setWakeUpWord(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->wakeUpWord:Ljava/util/List;

    return-void
.end method
