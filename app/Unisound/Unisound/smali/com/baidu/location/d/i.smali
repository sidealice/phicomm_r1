.class public final Lcom/baidu/location/d/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static volatile b:Lcom/baidu/location/d/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/d/i;->b:Lcom/baidu/location/d/i;

    invoke-static {}, Lcom/baidu/location/d/j;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    return-void
.end method
