.class public Lorg/greenrobot/greendao/DaoException;
.super Landroid/database/SQLException;
.source "DaoException.java"


# static fields
.field private static final serialVersionUID:J = -0x5192a0db69eecaf3L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p2}, Lorg/greenrobot/greendao/DaoException;->safeInitCause(Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/DaoException;->safeInitCause(Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected safeInitCause(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/DaoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Could not set initial cause"

    invoke-static {v1, v0}, Lorg/greenrobot/greendao/DaoLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const-string v1, "Initial cause is:"

    invoke-static {v1, p1}, Lorg/greenrobot/greendao/DaoLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
