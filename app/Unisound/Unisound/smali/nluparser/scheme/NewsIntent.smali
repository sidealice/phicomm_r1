.class public Lnluparser/scheme/NewsIntent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lnluparser/scheme/Intent;


# instance fields
.field private keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NewsIntent;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsIntent;->keyword:Ljava/lang/String;

    return-void
.end method
