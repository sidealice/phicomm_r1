.class public Lorg/xutils/x$Ext;
.super Ljava/lang/Object;
.source "x.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ext"
.end annotation


# static fields
.field private static app:Landroid/app/Application;

.field private static debug:Z

.field private static httpManager:Lorg/xutils/HttpManager;

.field private static imageManager:Lorg/xutils/ImageManager;

.field private static taskController:Lorg/xutils/common/TaskController;

.field private static viewInjector:Lorg/xutils/ViewInjector;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lorg/xutils/x$Ext;->debug:Z

    return v0
.end method

.method static synthetic access$100()Landroid/app/Application;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/xutils/x$Ext;->app:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/Application;)Landroid/app/Application;
    .locals 0
    .param p0, "x0"    # Landroid/app/Application;

    .prologue
    .line 78
    sput-object p0, Lorg/xutils/x$Ext;->app:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$200()Lorg/xutils/common/TaskController;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/xutils/x$Ext;->taskController:Lorg/xutils/common/TaskController;

    return-object v0
.end method

.method static synthetic access$300()Lorg/xutils/HttpManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/xutils/x$Ext;->httpManager:Lorg/xutils/HttpManager;

    return-object v0
.end method

.method static synthetic access$400()Lorg/xutils/ImageManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/xutils/x$Ext;->imageManager:Lorg/xutils/ImageManager;

    return-object v0
.end method

.method static synthetic access$500()Lorg/xutils/ViewInjector;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/xutils/x$Ext;->viewInjector:Lorg/xutils/ViewInjector;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 90
    invoke-static {}, Lorg/xutils/common/task/TaskControllerImpl;->registerInstance()V

    .line 91
    sget-object v0, Lorg/xutils/x$Ext;->app:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 92
    sput-object p0, Lorg/xutils/x$Ext;->app:Landroid/app/Application;

    .line 94
    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 97
    sput-boolean p0, Lorg/xutils/x$Ext;->debug:Z

    .line 98
    return-void
.end method

.method public static setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p0, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 119
    invoke-static {p0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 120
    return-void
.end method

.method public static setHttpManager(Lorg/xutils/HttpManager;)V
    .locals 0
    .param p0, "httpManager"    # Lorg/xutils/HttpManager;

    .prologue
    .line 107
    sput-object p0, Lorg/xutils/x$Ext;->httpManager:Lorg/xutils/HttpManager;

    .line 108
    return-void
.end method

.method public static setImageManager(Lorg/xutils/ImageManager;)V
    .locals 0
    .param p0, "imageManager"    # Lorg/xutils/ImageManager;

    .prologue
    .line 111
    sput-object p0, Lorg/xutils/x$Ext;->imageManager:Lorg/xutils/ImageManager;

    .line 112
    return-void
.end method

.method public static setTaskController(Lorg/xutils/common/TaskController;)V
    .locals 1
    .param p0, "taskController"    # Lorg/xutils/common/TaskController;

    .prologue
    .line 101
    sget-object v0, Lorg/xutils/x$Ext;->taskController:Lorg/xutils/common/TaskController;

    if-nez v0, :cond_0

    .line 102
    sput-object p0, Lorg/xutils/x$Ext;->taskController:Lorg/xutils/common/TaskController;

    .line 104
    :cond_0
    return-void
.end method

.method public static setViewInjector(Lorg/xutils/ViewInjector;)V
    .locals 0
    .param p0, "viewInjector"    # Lorg/xutils/ViewInjector;

    .prologue
    .line 115
    sput-object p0, Lorg/xutils/x$Ext;->viewInjector:Lorg/xutils/ViewInjector;

    .line 116
    return-void
.end method
