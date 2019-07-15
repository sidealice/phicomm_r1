.class Ltop/zibin/luban/b$1;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/zibin/luban/b;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ltop/zibin/luban/b;


# direct methods
.method constructor <init>(Ltop/zibin/luban/b;Landroid/content/Context;)V
    .locals 0

    .line 101
    iput-object p1, p0, Ltop/zibin/luban/b$1;->b:Ltop/zibin/luban/b;

    iput-object p2, p0, Ltop/zibin/luban/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 104
    :try_start_0
    iget-object v0, p0, Ltop/zibin/luban/b$1;->b:Ltop/zibin/luban/b;

    invoke-static {v0}, Ltop/zibin/luban/b;->a(Ltop/zibin/luban/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltop/zibin/luban/b$1;->b:Ltop/zibin/luban/b;

    invoke-static {v1}, Ltop/zibin/luban/b;->a(Ltop/zibin/luban/b;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    new-instance v0, Ltop/zibin/luban/a;

    iget-object v1, p0, Ltop/zibin/luban/b$1;->b:Ltop/zibin/luban/b;

    invoke-static {v1}, Ltop/zibin/luban/b;->b(Ltop/zibin/luban/b;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Ltop/zibin/luban/b$1;->b:Ltop/zibin/luban/b;

    iget-object v3, p0, Ltop/zibin/luban/b$1;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Ltop/zibin/luban/b;->a(Ltop/zibin/luban/b;Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltop/zibin/luban/a;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0}, Ltop/zibin/luban/a;->a()Ljava/io/File;

    move-result-object v0

    .line 107
    iget-object v1, p0, Ltop/zibin/luban/b$1;->b:Ltop/zibin/luban/b;

    invoke-static {v1}, Ltop/zibin/luban/b;->a(Ltop/zibin/luban/b;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Ltop/zibin/luban/b$1;->b:Ltop/zibin/luban/b;

    invoke-static {v2}, Ltop/zibin/luban/b;->a(Ltop/zibin/luban/b;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    iget-object v1, p0, Ltop/zibin/luban/b$1;->b:Ltop/zibin/luban/b;

    invoke-static {v1}, Ltop/zibin/luban/b;->a(Ltop/zibin/luban/b;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Ltop/zibin/luban/b$1;->b:Ltop/zibin/luban/b;

    invoke-static {v2}, Ltop/zibin/luban/b;->a(Ltop/zibin/luban/b;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
