.class public Lcom/phicomm/speaker/adapter/a/a;
.super Lcom/phicomm/speaker/adapter/a/a/a;
.source "LocalCommonChat.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/a/a/a;-><init>()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/adapter/a/a;->a(J)V

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/adapter/a/a;->b(Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a/a;->a:Ljava/lang/String;

    return-void
.end method
