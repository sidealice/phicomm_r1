.class Lme/shaohui/advancedluban/b;
.super Ljava/lang/Object;
.source "LubanBuilder.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/io/File;

.field e:Landroid/graphics/Bitmap$CompressFormat;

.field f:I


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lme/shaohui/advancedluban/b;->e:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x3

    .line 22
    iput v0, p0, Lme/shaohui/advancedluban/b;->f:I

    .line 25
    iput-object p1, p0, Lme/shaohui/advancedluban/b;->d:Ljava/io/File;

    return-void
.end method
