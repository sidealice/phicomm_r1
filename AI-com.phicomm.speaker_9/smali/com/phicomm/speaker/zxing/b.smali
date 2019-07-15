.class public final Lcom/phicomm/speaker/zxing/b;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/zxing/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "b"


# instance fields
.field private final b:Lcom/phicomm/speaker/zxing/h;

.field private final c:Lcom/phicomm/speaker/zxing/e;

.field private d:Lcom/phicomm/speaker/zxing/b$a;

.field private final e:Lcom/phicomm/speaker/zxing/camera/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/phicomm/speaker/zxing/h;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/phicomm/speaker/zxing/camera/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/zxing/h;",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/zxing/camera/d;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/b;->b:Lcom/phicomm/speaker/zxing/h;

    .line 71
    new-instance v6, Lcom/phicomm/speaker/zxing/e;

    new-instance v5, Lcom/phicomm/speaker/zxing/g;

    .line 72
    invoke-interface {p1}, Lcom/phicomm/speaker/zxing/h;->b()Lcom/phicomm/speaker/zxing/ViewfinderView;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/phicomm/speaker/zxing/g;-><init>(Lcom/phicomm/speaker/zxing/ViewfinderView;)V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/phicomm/speaker/zxing/e;-><init>(Lcom/phicomm/speaker/zxing/h;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v6, p0, Lcom/phicomm/speaker/zxing/b;->c:Lcom/phicomm/speaker/zxing/e;

    .line 73
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/b;->c:Lcom/phicomm/speaker/zxing/e;

    invoke-virtual {p1}, Lcom/phicomm/speaker/zxing/e;->start()V

    .line 74
    sget-object p1, Lcom/phicomm/speaker/zxing/b$a;->b:Lcom/phicomm/speaker/zxing/b$a;

    iput-object p1, p0, Lcom/phicomm/speaker/zxing/b;->d:Lcom/phicomm/speaker/zxing/b$a;

    .line 77
    iput-object p5, p0, Lcom/phicomm/speaker/zxing/b;->e:Lcom/phicomm/speaker/zxing/camera/d;

    .line 78
    invoke-virtual {p5}, Lcom/phicomm/speaker/zxing/camera/d;->c()V

    .line 79
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/b;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/b;->d:Lcom/phicomm/speaker/zxing/b$a;

    sget-object v1, Lcom/phicomm/speaker/zxing/b$a;->b:Lcom/phicomm/speaker/zxing/b$a;

    if-ne v0, v1, :cond_0

    .line 153
    sget-object v0, Lcom/phicomm/speaker/zxing/b$a;->a:Lcom/phicomm/speaker/zxing/b$a;

    iput-object v0, p0, Lcom/phicomm/speaker/zxing/b;->d:Lcom/phicomm/speaker/zxing/b$a;

    .line 154
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/b;->e:Lcom/phicomm/speaker/zxing/camera/d;

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/b;->c:Lcom/phicomm/speaker/zxing/e;

    invoke-virtual {v1}, Lcom/phicomm/speaker/zxing/e;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f09007d

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/zxing/camera/d;->a(Landroid/os/Handler;I)V

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/b;->b:Lcom/phicomm/speaker/zxing/h;

    invoke-interface {v0}, Lcom/phicomm/speaker/zxing/h;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 135
    sget-object v0, Lcom/phicomm/speaker/zxing/b$a;->c:Lcom/phicomm/speaker/zxing/b$a;

    iput-object v0, p0, Lcom/phicomm/speaker/zxing/b;->d:Lcom/phicomm/speaker/zxing/b$a;

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/b;->e:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/d;->d()V

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/b;->c:Lcom/phicomm/speaker/zxing/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/e;->a()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f0901ba

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/b;->c:Lcom/phicomm/speaker/zxing/e;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/zxing/e;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const v0, 0x7f09007f

    .line 147
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/zxing/b;->removeMessages(I)V

    const v0, 0x7f09007e

    .line 148
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/zxing/b;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0901cb

    if-ne v0, v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/b;->b()V

    goto/16 :goto_0

    .line 86
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f09007f

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 87
    sget-object v0, Lcom/phicomm/speaker/zxing/b$a;->b:Lcom/phicomm/speaker/zxing/b$a;

    iput-object v0, p0, Lcom/phicomm/speaker/zxing/b;->d:Lcom/phicomm/speaker/zxing/b$a;

    .line 88
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    const-string v1, "barcode_bitmap"

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .line 94
    array-length v4, v1

    invoke-static {v1, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    :cond_1
    const-string v1, "barcode_scaled_factor"

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/b;->b:Lcom/phicomm/speaker/zxing/h;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-interface {v0, p1, v2, v1}, Lcom/phicomm/speaker/zxing/h;->a(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V

    goto/16 :goto_0

    .line 101
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f09007e

    if-ne v0, v1, :cond_4

    .line 103
    sget-object p1, Lcom/phicomm/speaker/zxing/b$a;->a:Lcom/phicomm/speaker/zxing/b$a;

    iput-object p1, p0, Lcom/phicomm/speaker/zxing/b;->d:Lcom/phicomm/speaker/zxing/b$a;

    .line 104
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/b;->e:Lcom/phicomm/speaker/zxing/camera/d;

    iget-object v0, p0, Lcom/phicomm/speaker/zxing/b;->c:Lcom/phicomm/speaker/zxing/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/e;->a()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f09007d

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/zxing/camera/d;->a(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 105
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0901cc

    if-ne v0, v1, :cond_5

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/b;->b:Lcom/phicomm/speaker/zxing/h;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 107
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/b;->b:Lcom/phicomm/speaker/zxing/h;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 108
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f090147

    if-ne v0, v1, :cond_9

    .line 109
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80000

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/b;->b:Lcom/phicomm/speaker/zxing/h;

    check-cast v1, Landroid/app/Activity;

    .line 114
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 116
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_6

    .line 117
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 118
    sget-object v1, Lcom/phicomm/speaker/zxing/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using browser in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v1, "com.android.browser"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.chrome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 122
    :cond_7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.browser.application_id"

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :cond_8
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/b;->b:Lcom/phicomm/speaker/zxing/h;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    sget-object v0, Lcom/phicomm/speaker/zxing/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find anything to handle VIEW of URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_0
    return-void
.end method
