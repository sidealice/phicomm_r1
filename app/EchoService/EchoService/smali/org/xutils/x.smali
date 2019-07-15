.class public final Lorg/xutils/x;
.super Ljava/lang/Object;
.source "x.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/x$MockApplication;,
        Lorg/xutils/x$Ext;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static app()Landroid/app/Application;
    .locals 6

    .prologue
    .line 34
    invoke-static {}, Lorg/xutils/x$Ext;->access$100()Landroid/app/Application;

    move-result-object v4

    if-nez v4, :cond_0

    .line 37
    :try_start_0
    const-string v4, "com.android.layoutlib.bridge.impl.RenderAction"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 38
    .local v3, "renderActionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getCurrentContext"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 39
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 40
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Lorg/xutils/x$MockApplication;

    invoke-direct {v4, v0}, Lorg/xutils/x$MockApplication;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lorg/xutils/x$Ext;->access$102(Landroid/app/Application;)Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    invoke-static {}, Lorg/xutils/x$Ext;->access$100()Landroid/app/Application;

    move-result-object v4

    return-object v4

    .line 41
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 42
    .local v1, "ignored":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "please invoke x.Ext.init(app) on Application#onCreate() and register your Application in manifest."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;
    .locals 1
    .param p0, "daoConfig"    # Lorg/xutils/DbManager$DaoConfig;

    .prologue
    .line 75
    invoke-static {p0}, Lorg/xutils/db/DbManagerImpl;->getInstance(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    return-object v0
.end method

.method public static http()Lorg/xutils/HttpManager;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lorg/xutils/x$Ext;->access$300()Lorg/xutils/HttpManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lorg/xutils/http/HttpManagerImpl;->registerInstance()V

    .line 57
    :cond_0
    invoke-static {}, Lorg/xutils/x$Ext;->access$300()Lorg/xutils/HttpManager;

    move-result-object v0

    return-object v0
.end method

.method public static image()Lorg/xutils/ImageManager;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lorg/xutils/x$Ext;->access$400()Lorg/xutils/ImageManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lorg/xutils/image/ImageManagerImpl;->registerInstance()V

    .line 64
    :cond_0
    invoke-static {}, Lorg/xutils/x$Ext;->access$400()Lorg/xutils/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lorg/xutils/x$Ext;->access$000()Z

    move-result v0

    return v0
.end method

.method public static task()Lorg/xutils/common/TaskController;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lorg/xutils/x$Ext;->access$200()Lorg/xutils/common/TaskController;

    move-result-object v0

    return-object v0
.end method

.method public static view()Lorg/xutils/ViewInjector;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lorg/xutils/x$Ext;->access$500()Lorg/xutils/ViewInjector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lorg/xutils/view/ViewInjectorImpl;->registerInstance()V

    .line 71
    :cond_0
    invoke-static {}, Lorg/xutils/x$Ext;->access$500()Lorg/xutils/ViewInjector;

    move-result-object v0

    return-object v0
.end method
