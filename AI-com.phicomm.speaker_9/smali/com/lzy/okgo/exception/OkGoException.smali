.class public Lcom/lzy/okgo/exception/OkGoException;
.super Ljava/lang/Exception;
.source "OkGoException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static INSTANCE(Ljava/lang/String;)Lcom/lzy/okgo/exception/OkGoException;
    .locals 1

    .line 15
    new-instance v0, Lcom/lzy/okgo/exception/OkGoException;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/exception/OkGoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
