.class public Lcom/unisound/vui/data/entity/out/UniContact;
.super Lcom/unisound/vui/common/a/b;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private contactId:J

.field private contactName:Ljava/lang/String;

.field private contactNamePinYin:Ljava/lang/String;

.field private contactPhoneNO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasPhoneNumber:I

.field private isHotlineNum:Z

.field private isMultiMark:Z

.field private photoId:I

.field private spellWordsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/unisound/vui/common/a/b;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactNamePinYin:Ljava/lang/String;

    iput v2, p0, Lcom/unisound/vui/data/entity/out/UniContact;->photoId:I

    iput v2, p0, Lcom/unisound/vui/data/entity/out/UniContact;->hasPhoneNumber:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactPhoneNO:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/unisound/vui/data/entity/out/UniContact;->isMultiMark:Z

    iput-boolean v2, p0, Lcom/unisound/vui/data/entity/out/UniContact;->isHotlineNum:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/util/ArrayList;)V
    .locals 3
    .param p1, "contactId"    # I
    .param p2, "contactName"    # Ljava/lang/String;
    .param p3, "contactNamePinYin"    # Ljava/lang/String;
    .param p4, "photoId"    # I
    .param p5, "hasPhoneNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "contactPhoneNO":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/unisound/vui/common/a/b;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactNamePinYin:Ljava/lang/String;

    iput v2, p0, Lcom/unisound/vui/data/entity/out/UniContact;->photoId:I

    iput v2, p0, Lcom/unisound/vui/data/entity/out/UniContact;->hasPhoneNumber:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactPhoneNO:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/unisound/vui/data/entity/out/UniContact;->isMultiMark:Z

    iput-boolean v2, p0, Lcom/unisound/vui/data/entity/out/UniContact;->isHotlineNum:Z

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactId:J

    iput-object p2, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactName:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactNamePinYin:Ljava/lang/String;

    iput p4, p0, Lcom/unisound/vui/data/entity/out/UniContact;->photoId:I

    iput p5, p0, Lcom/unisound/vui/data/entity/out/UniContact;->hasPhoneNumber:I

    iput-object p6, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactPhoneNO:Ljava/util/ArrayList;

    return-void
.end method

.method private createParticipleText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "contactName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanPhone()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactPhoneNO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getContactId()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactId:J

    return-wide v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method public getContactNamePinYin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactNamePinYin:Ljava/lang/String;

    return-object v0
.end method

.method public getContactPhoneNO()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactPhoneNO:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHasPhoneNumber()I
    .locals 1

    iget v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->hasPhoneNumber:I

    return v0
.end method

.method public getPhotoId()I
    .locals 1

    iget v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->photoId:I

    return v0
.end method

.method public isContainSearchName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->spellWordsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->spellWordsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHotlineNum()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->isHotlineNum:Z

    return v0
.end method

.method public isMultiMark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->isMultiMark:Z

    return v0
.end method

.method public setContactId(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    iput-wide p1, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactId:J

    return-void
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactName:Ljava/lang/String;

    return-void
.end method

.method public setContactNamePinYin(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactNamePinYin"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactNamePinYin:Ljava/lang/String;

    return-void
.end method

.method public setContactPhoneNO(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contactPhoneNO":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactPhoneNO:Ljava/util/ArrayList;

    return-void
.end method

.method public setHasPhoneNumber(I)V
    .locals 0
    .param p1, "hasPhoneNumber"    # I

    .prologue
    iput p1, p0, Lcom/unisound/vui/data/entity/out/UniContact;->hasPhoneNumber:I

    return-void
.end method

.method public setIsHotlineNum(Z)V
    .locals 0
    .param p1, "isHotlineNum"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/unisound/vui/data/entity/out/UniContact;->isHotlineNum:Z

    return-void
.end method

.method public setMultiMark(Z)V
    .locals 0
    .param p1, "multiMark"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/unisound/vui/data/entity/out/UniContact;->isMultiMark:Z

    return-void
.end method

.method public setPhotoId(I)V
    .locals 0
    .param p1, "photoId"    # I

    .prologue
    iput p1, p0, Lcom/unisound/vui/data/entity/out/UniContact;->photoId:I

    return-void
.end method

.method public setSpellWordsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/unisound/vui/data/entity/out/UniContact;->spellWordsList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/entity/out/UniContact;->contactName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unisound/vui/data/entity/out/UniContact;->createParticipleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
