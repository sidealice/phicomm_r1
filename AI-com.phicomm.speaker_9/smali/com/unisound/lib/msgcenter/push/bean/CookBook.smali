.class public Lcom/unisound/lib/msgcenter/push/bean/CookBook;
.super Ljava/lang/Object;
.source "CookBook.java"


# instance fields
.field private content:Ljava/lang/String;

.field private dishName:Ljava/lang/String;

.field private id:I

.field private imgAddress:Ljava/lang/String;

.field private webAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDishName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->dishName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->id:I

    return v0
.end method

.method public getImgAddress()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->imgAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getWebAddress()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->webAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->content:Ljava/lang/String;

    return-void
.end method

.method public setDishName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->dishName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->id:I

    return-void
.end method

.method public setImgAddress(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->imgAddress:Ljava/lang/String;

    return-void
.end method

.method public setWebAddress(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->webAddress:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CookBook{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dishName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->dishName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imgAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->imgAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", webAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/msgcenter/push/bean/CookBook;->webAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
