.class public Lorg/litepal/crud/async/AverageExecutor;
.super Lorg/litepal/crud/async/AsyncExecutor;
.source "AverageExecutor.java"


# instance fields
.field private cb:Lorg/litepal/crud/callback/AverageCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/litepal/crud/async/AsyncExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public getListener()Lorg/litepal/crud/callback/AverageCallback;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/litepal/crud/async/AverageExecutor;->cb:Lorg/litepal/crud/callback/AverageCallback;

    return-object v0
.end method

.method public listen(Lorg/litepal/crud/callback/AverageCallback;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/litepal/crud/async/AverageExecutor;->cb:Lorg/litepal/crud/callback/AverageCallback;

    .line 37
    invoke-virtual {p0}, Lorg/litepal/crud/async/AverageExecutor;->execute()V

    return-void
.end method
