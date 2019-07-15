.class public final Lcom/huawei/hms/support/log/HMSDebugger;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/huawei/hms/support/log/HMSDebugger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/support/log/HMSDebugger;

    invoke-direct {v0}, Lcom/huawei/hms/support/log/HMSDebugger;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/log/HMSDebugger;->a:Lcom/huawei/hms/support/log/HMSDebugger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Landroid/content/Context;Lcom/huawei/hms/support/log/LogLevel;)Lcom/huawei/hms/support/log/HMSDebugger;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/Log/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/huawei/hms/support/log/HMSDebugger;->log(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)Lcom/huawei/hms/support/log/HMSDebugger;

    move-result-object p0

    return-object p0
.end method

.method public static log(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)Lcom/huawei/hms/support/log/HMSDebugger;
    .locals 1

    const-string v0, "HMSSDK"

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/support/log/c;->a(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;Ljava/lang/String;)V

    sget-object p0, Lcom/huawei/hms/support/log/HMSDebugger;->a:Lcom/huawei/hms/support/log/HMSDebugger;

    return-object p0
.end method


# virtual methods
.method public on()Lcom/huawei/hms/support/log/HMSDebugger;
    .locals 0

    invoke-virtual {p0}, Lcom/huawei/hms/support/log/HMSDebugger;->pushOn()Lcom/huawei/hms/support/log/HMSDebugger;

    return-object p0
.end method

.method public pushOn()Lcom/huawei/hms/support/log/HMSDebugger;
    .locals 0

    invoke-static {}, Lcom/huawei/hms/support/api/push/a/b;->a()V

    return-object p0
.end method
