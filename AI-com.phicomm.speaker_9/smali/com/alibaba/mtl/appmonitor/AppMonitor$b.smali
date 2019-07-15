.class final enum Lcom/alibaba/mtl/appmonitor/AppMonitor$b;
.super Ljava/lang/Enum;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/mtl/appmonitor/AppMonitor$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

.field public static final enum b:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

.field public static final enum c:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1413
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    const-string v1, "Local"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;->b:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    const-string v1, "Service"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;->c:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    const/4 v0, 0x2

    .line 1412
    new-array v0, v0, [Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;->b:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;->c:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;->a:[Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1412
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
