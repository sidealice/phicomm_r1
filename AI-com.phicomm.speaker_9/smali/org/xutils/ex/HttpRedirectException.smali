.class public Lorg/xutils/ex/HttpRedirectException;
.super Lorg/xutils/ex/HttpException;
.source "HttpRedirectException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    .line 23
    invoke-virtual {p0, p3}, Lorg/xutils/ex/HttpRedirectException;->setResult(Ljava/lang/String;)V

    return-void
.end method
