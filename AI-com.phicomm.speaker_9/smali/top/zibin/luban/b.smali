.class public Ltop/zibin/luban/b;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/zibin/luban/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ltop/zibin/luban/c;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Ltop/zibin/luban/b$a;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Ltop/zibin/luban/b$a;->a(Ltop/zibin/luban/b$a;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Ltop/zibin/luban/b;->a:Ljava/io/File;

    .line 30
    invoke-static {p1}, Ltop/zibin/luban/b$a;->b(Ltop/zibin/luban/b$a;)Ltop/zibin/luban/c;

    move-result-object p1

    iput-object p1, p0, Ltop/zibin/luban/b;->b:Ltop/zibin/luban/c;

    .line 31
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Ltop/zibin/luban/b;->c:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Ltop/zibin/luban/b$a;Ltop/zibin/luban/b$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Ltop/zibin/luban/b;-><init>(Ltop/zibin/luban/b$a;)V

    return-void
.end method

.method static synthetic a(Ltop/zibin/luban/b;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Ltop/zibin/luban/b;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 80
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const-string p1, "Luban"

    const/4 p2, 0x6

    .line 87
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Luban"

    const-string p2, "default disk cache dir is null"

    .line 88
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method static synthetic a(Ltop/zibin/luban/b;Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Ltop/zibin/luban/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ltop/zibin/luban/b$a;
    .locals 1

    .line 35
    new-instance v0, Ltop/zibin/luban/b$a;

    invoke-direct {v0, p0}, Ltop/zibin/luban/b$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/io/File;
    .locals 6

    .line 45
    invoke-direct {p0, p1}, Ltop/zibin/luban/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Ltop/zibin/luban/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Ltop/zibin/luban/b;)Ljava/io/File;
    .locals 0

    .line 15
    iget-object p0, p0, Ltop/zibin/luban/b;->a:Ljava/io/File;

    return-object p0
.end method

.method static synthetic b(Ltop/zibin/luban/b;Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Ltop/zibin/luban/b;->d(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "luban_disk_cache"

    .line 62
    invoke-direct {p0, p1, v0}, Ltop/zibin/luban/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private d(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 97
    iget-object v0, p0, Ltop/zibin/luban/b;->a:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Ltop/zibin/luban/b;->b:Ltop/zibin/luban/c;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ltop/zibin/luban/b;->b:Ltop/zibin/luban/c;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "image file cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltop/zibin/luban/c;->a(Ljava/lang/Throwable;)V

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltop/zibin/luban/b$1;

    invoke-direct {v1, p0, p1}, Ltop/zibin/luban/b$1;-><init>(Ltop/zibin/luban/b;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 123
    iget-object v0, p0, Ltop/zibin/luban/b;->b:Ltop/zibin/luban/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 125
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    iget-object v0, p0, Ltop/zibin/luban/b;->b:Ltop/zibin/luban/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Ltop/zibin/luban/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object p1, p0, Ltop/zibin/luban/b;->b:Ltop/zibin/luban/c;

    invoke-interface {p1}, Ltop/zibin/luban/c;->a()V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Ltop/zibin/luban/b;->b:Ltop/zibin/luban/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-interface {v0, p1}, Ltop/zibin/luban/c;->a(Ljava/io/File;)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
