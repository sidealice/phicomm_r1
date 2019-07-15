.class public Lorg/litepal/crud/async/CountExecutor;
.super Lorg/litepal/crud/async/AsyncExecutor;
.source "CountExecutor.java"


# instance fields
.field private cb:Lorg/litepal/crud/callback/CountCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/litepal/crud/async/AsyncExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public getListener()Lorg/litepal/crud/callback/CountCallback;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/litepal/crud/async/CountExecutor;->cb:Lorg/litepal/crud/callback/CountCallback;

    return-object v0
.end method

.method public listen(Lorg/litepal/crud/callback/CountCallback;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/litepal/crud/async/CountExecutor;->cb:Lorg/litepal/crud/callback/CountCallback;

    .line 37
    invoke-virtual {p0}, Lorg/litepal/crud/async/CountExecutor;->execute()V

    return-void
.end method
