.class public Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
.super Lorg/litepal/crud/async/AsyncExecutor;
.source "UpdateOrDeleteExecutor.java"


# instance fields
.field private cb:Lorg/litepal/crud/callback/UpdateOrDeleteCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/litepal/crud/async/AsyncExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public getListener()Lorg/litepal/crud/callback/UpdateOrDeleteCallback;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->cb:Lorg/litepal/crud/callback/UpdateOrDeleteCallback;

    return-object v0
.end method

.method public listen(Lorg/litepal/crud/callback/UpdateOrDeleteCallback;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->cb:Lorg/litepal/crud/callback/UpdateOrDeleteCallback;

    .line 37
    invoke-virtual {p0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->execute()V

    return-void
.end method
