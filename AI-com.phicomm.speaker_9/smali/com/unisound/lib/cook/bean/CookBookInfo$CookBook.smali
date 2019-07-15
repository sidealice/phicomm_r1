.class public Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;
.super Ljava/lang/Object;
.source "CookBookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/cook/bean/CookBookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CookBook"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private dishName:Ljava/lang/String;

.field private id:I

.field private imgAddress:Ljava/lang/String;

.field private webAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDishName()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;->dishName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;->id:I

    return v0
.end method

.method public getImgAddress()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;->imgAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getWebAddress()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;->webAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;->content:Ljava/lang/String;

    return-void
.end method

.method public setDishName(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;->dishName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;->id:I

    return-void
.end method

.method public setImgAddress(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;->imgAddress:Ljava/lang/String;

    return-void
.end method

.method public setWebAddress(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/unisound/lib/cook/bean/CookBookInfo$CookBook;->webAddress:Ljava/lang/String;

    return-void
.end method
