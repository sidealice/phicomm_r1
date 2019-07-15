.class Lcom/baidu/location/b/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/d;


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/d;Lcom/baidu/location/b/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/d$c;-><init>(Lcom/baidu/location/b/d;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;J)J

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Z)V

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {v0, p1}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Z)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Z)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {v0, v4}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;J)J

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Z)Z

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {v0, v4}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {v0, v4}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
