.class public Lrx/exceptions/OnErrorFailedException;
.super Ljava/lang/RuntimeException;
.source "OnErrorFailedException.java"


# static fields
.field private static final serialVersionUID:J = -0x5d19dcdff8b398bL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    if-eqz p2, :cond_0

    .end local p2    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void

    .line 38
    .restart local p2    # "e":Ljava/lang/Throwable;
    :cond_0
    new-instance p2, Ljava/lang/NullPointerException;

    .end local p2    # "e":Ljava/lang/Throwable;
    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    .end local p1    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void

    .line 48
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_1
.end method
