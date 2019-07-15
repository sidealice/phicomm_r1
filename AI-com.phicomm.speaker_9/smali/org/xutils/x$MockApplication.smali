.class Lorg/xutils/x$MockApplication;
.super Landroid/app/Application;
.source "x.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockApplication"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 125
    invoke-virtual {p0, p1}, Lorg/xutils/x$MockApplication;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method
