.class public Lrx/exceptions/OnErrorNotImplementedException;
.super Ljava/lang/RuntimeException;
.source "OnErrorNotImplementedException.java"


# static fields
.field private static final serialVersionUID:J = -0x576a0913e5716a6cL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    if-eqz p2, :cond_0

    .end local p2    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void

    .line 46
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
    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    .end local p1    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void

    .line 56
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
