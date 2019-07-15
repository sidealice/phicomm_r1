.class public final Lcom/blankj/utilcode/util/d;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static d:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/d;->b:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/blankj/utilcode/util/d$1;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/d$1;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/d;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public static a()Landroid/app/Application;
    .locals 2

    .line 122
    sget-object v0, Lcom/blankj/utilcode/util/d;->c:Landroid/app/Application;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/blankj/utilcode/util/d;->c:Landroid/app/Application;

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "u should init first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/blankj/utilcode/util/d;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 111
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Argument \'app\' of type Application (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_0
    sput-object p0, Lcom/blankj/utilcode/util/d;->c:Landroid/app/Application;

    .line 113
    sget-object v0, Lcom/blankj/utilcode/util/d;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;

    if-ne v0, v1, :cond_0

    return-void

    .line 128
    :cond_0
    sget-object v0, Lcom/blankj/utilcode/util/d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/blankj/utilcode/util/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/blankj/utilcode/util/d;->a:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method
