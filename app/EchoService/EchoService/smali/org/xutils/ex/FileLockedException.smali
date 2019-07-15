.class public Lorg/xutils/ex/FileLockedException;
.super Lorg/xutils/ex/BaseException;
.source "FileLockedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lorg/xutils/ex/BaseException;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method
