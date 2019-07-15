.class public Lnluparser/scheme/CookBookResult$CookBook;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/scheme/CookBookResult;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/CookBookResult$CookBook;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDishName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/CookBookResult$CookBook;->dishName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/CookBookResult$CookBook;->id:I

    return v0
.end method

.method public getImgAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/CookBookResult$CookBook;->imgAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getWebAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/CookBookResult$CookBook;->webAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/CookBookResult$CookBook;->content:Ljava/lang/String;

    return-void
.end method

.method public setDishName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dishName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/CookBookResult$CookBook;->dishName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/CookBookResult$CookBook;->id:I

    return-void
.end method

.method public setImgAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgAddress"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/CookBookResult$CookBook;->imgAddress:Ljava/lang/String;

    return-void
.end method

.method public setWebAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "webAddress"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/CookBookResult$CookBook;->webAddress:Ljava/lang/String;

    return-void
.end method
