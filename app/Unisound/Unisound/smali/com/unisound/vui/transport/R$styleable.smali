.class public final Lcom/unisound/vui/transport/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/transport/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AspectRatioFrameLayout:[I

.field public static final AspectRatioFrameLayout_resize_mode:I = 0x0

.field public static final DefaultTimeBar:[I

.field public static final DefaultTimeBar_ad_marker_color:I = 0x8

.field public static final DefaultTimeBar_ad_marker_width:I = 0x2

.field public static final DefaultTimeBar_bar_height:I = 0x0

.field public static final DefaultTimeBar_buffered_color:I = 0x7

.field public static final DefaultTimeBar_played_color:I = 0x6

.field public static final DefaultTimeBar_scrubber_disabled_size:I = 0x4

.field public static final DefaultTimeBar_scrubber_dragged_size:I = 0x5

.field public static final DefaultTimeBar_scrubber_enabled_size:I = 0x3

.field public static final DefaultTimeBar_touch_target_height:I = 0x1

.field public static final PlaybackControlView:[I

.field public static final PlaybackControlView_controller_layout_id:I = 0x0

.field public static final PlaybackControlView_fastforward_increment:I = 0x1

.field public static final PlaybackControlView_rewind_increment:I = 0x2

.field public static final PlaybackControlView_show_timeout:I = 0x3

.field public static final SimpleExoPlayerView:[I

.field public static final SimpleExoPlayerView_controller_layout_id:I = 0x0

.field public static final SimpleExoPlayerView_default_artwork:I = 0x8

.field public static final SimpleExoPlayerView_fastforward_increment:I = 0x1

.field public static final SimpleExoPlayerView_hide_on_touch:I = 0xa

.field public static final SimpleExoPlayerView_player_layout_id:I = 0x2

.field public static final SimpleExoPlayerView_resize_mode:I = 0x3

.field public static final SimpleExoPlayerView_rewind_increment:I = 0x4

.field public static final SimpleExoPlayerView_show_timeout:I = 0x5

.field public static final SimpleExoPlayerView_surface_type:I = 0x6

.field public static final SimpleExoPlayerView_use_artwork:I = 0x7

.field public static final SimpleExoPlayerView_use_controller:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 258
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010003

    aput v2, v0, v1

    sput-object v0, Lcom/unisound/vui/transport/R$styleable;->AspectRatioFrameLayout:[I

    .line 260
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unisound/vui/transport/R$styleable;->DefaultTimeBar:[I

    .line 270
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/unisound/vui/transport/R$styleable;->PlaybackControlView:[I

    .line 275
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/unisound/vui/transport/R$styleable;->SimpleExoPlayerView:[I

    return-void

    .line 260
    :array_0
    .array-data 4
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
    .end array-data

    .line 270
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010004
        0x7f010005
    .end array-data

    .line 275
    :array_2
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
