.class public final Lcom/soundcloud/android/crop/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soundcloud/android/crop/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CropImageView:[I

.field public static final CropImageView_highlightColor:I = 0x0

.field public static final CropImageView_showCircle:I = 0x1

.field public static final CropImageView_showHandles:I = 0x2

.field public static final CropImageView_showThirds:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 63
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/soundcloud/android/crop/R$styleable;->CropImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0400b4
        0x7f040178
        0x7f04017a
        0x7f04017c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
