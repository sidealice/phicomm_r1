.class Lcom/baidu/location/b/d$a;
.super Landroid/location/GnssStatus$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/d;


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/d$a;->a:Lcom/baidu/location/b/d;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/d;Lcom/baidu/location/b/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/d$a;-><init>(Lcom/baidu/location/b/d;)V

    return-void
.end method
