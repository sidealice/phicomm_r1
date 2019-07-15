.class public final Lin/srain/cube/views/ptr/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final PtrClassicHeader:[I

.field public static final PtrClassicHeader_ptr_rotate_ani_time:I = 0x0

.field public static final PtrFrameLayout:[I

.field public static final PtrFrameLayout_ptr_content:I = 0x0

.field public static final PtrFrameLayout_ptr_duration_to_back_footer:I = 0x1

.field public static final PtrFrameLayout_ptr_duration_to_back_header:I = 0x2

.field public static final PtrFrameLayout_ptr_duration_to_back_refresh:I = 0x3

.field public static final PtrFrameLayout_ptr_duration_to_close_either:I = 0x4

.field public static final PtrFrameLayout_ptr_duration_to_close_footer:I = 0x5

.field public static final PtrFrameLayout_ptr_duration_to_close_header:I = 0x6

.field public static final PtrFrameLayout_ptr_footer:I = 0x7

.field public static final PtrFrameLayout_ptr_header:I = 0x8

.field public static final PtrFrameLayout_ptr_keep_header_when_refresh:I = 0x9

.field public static final PtrFrameLayout_ptr_mode:I = 0xa

.field public static final PtrFrameLayout_ptr_pull_to_fresh:I = 0xb

.field public static final PtrFrameLayout_ptr_ratio_of_header_height_to_refresh:I = 0xc

.field public static final PtrFrameLayout_ptr_resistance:I = 0xd

.field public static final PtrFrameLayout_ptr_resistance_footer:I = 0xe

.field public static final PtrFrameLayout_ptr_resistance_header:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 66
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f04015c

    aput v2, v0, v1

    sput-object v0, Lin/srain/cube/views/ptr/R$styleable;->PtrClassicHeader:[I

    const/16 v0, 0x10

    .line 68
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lin/srain/cube/views/ptr/R$styleable;->PtrFrameLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04014c
        0x7f04014d
        0x7f04014e
        0x7f04014f
        0x7f040150
        0x7f040151
        0x7f040152
        0x7f040153
        0x7f040154
        0x7f040155
        0x7f040156
        0x7f040157
        0x7f040158
        0x7f040159
        0x7f04015a
        0x7f04015b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
