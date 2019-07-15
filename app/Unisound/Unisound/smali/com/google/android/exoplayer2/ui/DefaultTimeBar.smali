.class public Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
.super Landroid/view/View;
.source "DefaultTimeBar.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TimeBar;


# static fields
.field private static final DEFAULT_AD_MARKER_COLOR:I = -0x4d000100

.field private static final DEFAULT_AD_MARKER_WIDTH:I = 0x4

.field private static final DEFAULT_BAR_HEIGHT:I = 0x4

.field private static final DEFAULT_BUFFERED_COLOR:I = -0x33000001

.field private static final DEFAULT_INCREMENT_COUNT:I = 0x14

.field private static final DEFAULT_PLAYED_COLOR:I = 0x33ffffff

.field private static final DEFAULT_SCRUBBER_DISABLED_SIZE:I = 0x0

.field private static final DEFAULT_SCRUBBER_DRAGGED_SIZE:I = 0x10

.field private static final DEFAULT_SCRUBBER_ENABLED_SIZE:I = 0xc

.field private static final DEFAULT_TOUCH_TARGET_HEIGHT:I = 0x1a

.field private static final FINE_SCRUB_RATIO:I = 0x3

.field private static final FINE_SCRUB_Y_THRESHOLD:I = -0x32

.field private static final OPAQUE_COLOR:I = -0x1000000

.field private static final STOP_SCRUBBING_TIMEOUT_MS:J = 0x3e8L


# instance fields
.field private adBreakCount:I

.field private adBreakTimesMs:[J

.field private final adMarkerPaint:Landroid/graphics/Paint;

.field private final adMarkerWidth:I

.field private final barHeight:I

.field private final bufferedBar:Landroid/graphics/Rect;

.field private final bufferedPaint:Landroid/graphics/Paint;

.field private bufferedPosition:J

.field private duration:J

.field private final fineScrubYThreshold:I

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private keyCountIncrement:I

.field private keyTimeIncrement:J

.field private lastCoarseScrubXPosition:I

.field private listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

.field private locationOnScreen:[I

.field private position:J

.field private final progressBar:Landroid/graphics/Rect;

.field private final progressPaint:Landroid/graphics/Paint;

.field private scrubPosition:J

.field private final scrubberBar:Landroid/graphics/Rect;

.field private final scrubberDisabledSize:I

.field private final scrubberDraggedSize:I

.field private final scrubberEnabledSize:I

.field private final scrubberPadding:I

.field private final scrubberPaint:Landroid/graphics/Paint;

.field private scrubberSize:I

.field private scrubbing:Z

.field private final seekBounds:Landroid/graphics/Rect;

.field private final stopScrubbingRunnable:Ljava/lang/Runnable;

.field private touchPosition:Landroid/graphics/Point;

.field private final touchTargetHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    .line 115
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 116
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    .line 117
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    .line 118
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    .line 121
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 125
    .local v17, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 126
    .local v15, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v18, -0x32

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->fineScrubYThreshold:I

    .line 127
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v10

    .line 128
    .local v10, "defaultBarHeight":I
    const/16 v18, 0x1a

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v14

    .line 129
    .local v14, "defaultTouchTargetHeight":I
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v9

    .line 130
    .local v9, "defaultAdMarkerWidth":I
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v13

    .line 131
    .local v13, "defaultScrubberEnabledSize":I
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v11

    .line 132
    .local v11, "defaultScrubberDisabledSize":I
    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v12

    .line 133
    .local v12, "defaultScrubberDraggedSize":I
    if-eqz p2, :cond_1

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    sget-object v19, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar:[I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 137
    .local v6, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v18, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_bar_height:I

    move/from16 v0, v18

    invoke-virtual {v6, v0, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    .line 139
    sget v18, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_touch_target_height:I

    move/from16 v0, v18

    invoke-virtual {v6, v0, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    .line 141
    sget v18, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_ad_marker_width:I

    move/from16 v0, v18

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    .line 143
    sget v18, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_enabled_size:I

    move/from16 v0, v18

    invoke-virtual {v6, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    .line 145
    sget v18, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_disabled_size:I

    move/from16 v0, v18

    invoke-virtual {v6, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    .line 147
    sget v18, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_dragged_size:I

    move/from16 v0, v18

    invoke-virtual {v6, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 149
    sget v18, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_played_color:I

    const v19, 0x33ffffff

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 150
    .local v16, "playedColor":I
    sget v18, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_buffered_color:I

    const v19, -0x33000001    # -1.3421772E8f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 152
    .local v8, "bufferedColor":I
    sget v18, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_ad_marker_color:I

    const v19, -0x4d000100

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 154
    .local v7, "adMarkerColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/high16 v19, -0x1000000

    or-int v19, v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "adMarkerColor":I
    .end local v8    # "bufferedColor":I
    .end local v16    # "playedColor":I
    :goto_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    .line 174
    new-instance v18, Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatter:Ljava/util/Formatter;

    .line 175
    new-instance v18, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$1;-><init>(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberSize:I

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    move/from16 v20, v0

    .line 183
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    .line 185
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    .line 186
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    .line 187
    const/16 v18, 0x14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    .line 188
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setFocusable(Z)V

    .line 189
    sget v18, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->maybeSetImportantForAccessibilityV16()V

    .line 192
    :cond_0
    return-void

    .line 159
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v18

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v18

    .line 162
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :cond_1
    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    .line 163
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    .line 164
    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    .line 165
    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    .line 166
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    .line 167
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const v19, 0x33ffffff

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const v19, -0x33000001    # -1.3421772E8f

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const v19, -0x4d000100

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return-void
.end method

.method private static dpToPx(Landroid/util/DisplayMetrics;I)I
    .locals 2
    .param p0, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p1, "dps"    # I

    .prologue
    .line 577
    int-to-float v0, p1

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawPlayhead(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 533
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 540
    :goto_0
    return-void

    .line 536
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberSize:I

    div-int/lit8 v1, v2, 0x2

    .line 537
    .local v1, "playheadRadius":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    .line 539
    .local v0, "playheadCenter":I
    int-to-float v2, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawTimeBar(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 502
    .local v18, "progressBarHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v3, v18, 0x2

    sub-int v12, v2, v3

    .line 503
    .local v12, "barTop":I
    add-int v11, v12, v18

    .line 504
    .local v11, "barBottom":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    int-to-float v4, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 530
    :cond_0
    return-void

    .line 508
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget v13, v2, Landroid/graphics/Rect;->left:I

    .line 509
    .local v13, "bufferedLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->right:I

    .line 510
    .local v14, "bufferedRight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 511
    .local v19, "progressLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_2

    .line 512
    move/from16 v0, v19

    int-to-float v3, v0

    int-to-float v4, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 514
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 515
    if-le v14, v13, :cond_3

    .line 516
    int-to-float v3, v13

    int-to-float v4, v12

    int-to-float v5, v14

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 518
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_4

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    int-to-float v4, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 521
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    div-int/lit8 v10, v2, 0x2

    .line 522
    .local v10, "adMarkerOffset":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adBreakCount:I

    if-ge v15, v2, :cond_0

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adBreakTimesMs:[J

    aget-wide v2, v2, v15

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v8

    .line 524
    .local v8, "adBreakTimeMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 525
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v8

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    sub-int v17, v2, v10

    .line 526
    .local v17, "markerPositionOffset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    .line 527
    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 526
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v16, v2, v3

    .line 528
    .local v16, "markerLeft":I
    move/from16 v0, v16

    int-to-float v3, v0

    int-to-float v4, v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    add-int v2, v2, v16

    int-to-float v5, v2

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 522
    add-int/lit8 v15, v15, 0x1

    goto :goto_0
.end method

.method private getPositionIncrement()J
    .locals 4

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 547
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    goto :goto_0
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrubberPosition()J
    .locals 4

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 491
    :cond_0
    const-wide/16 v0, 0x0

    .line 493
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private isInSeekBar(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private maybeSetImportantForAccessibilityV16()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setImportantForAccessibility(I)V

    .line 423
    :cond_0
    return-void
.end method

.method private positionScrubber(F)V
    .locals 4
    .param p1, "xPosition"    # F

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    float-to-int v1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 475
    return-void
.end method

.method private resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    if-nez v0, :cond_0

    .line 479
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    .line 480
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getLocationOnScreen([I)V

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    .line 483
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method private scrubIncrementally(J)Z
    .locals 9
    .param p1, "positionChange"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    .line 558
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move v0, v8

    .line 573
    :goto_0
    return v0

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v6

    .line 562
    .local v6, "scrubberPosition":J
    add-long v0, v6, p1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    .line 563
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    move v0, v8

    .line 564
    goto :goto_0

    .line 566
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-nez v0, :cond_2

    .line 567
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->startScrubbing()V

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    if-eqz v0, :cond_3

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    invoke-interface {v0, p0, v2, v3}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V

    .line 572
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 573
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startScrubbing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 426
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    .line 427
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateScrubberState()V

    .line 428
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 429
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;)V

    .line 435
    :cond_1
    return-void
.end method

.method private stopScrubbing(Z)V
    .locals 4
    .param p1, "canceled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 438
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    .line 439
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 440
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateScrubberState()V

    .line 444
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    .line 445
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v2

    invoke-interface {v1, p0, v2, v3, p1}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V

    .line 448
    :cond_1
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    .line 456
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 457
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 458
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    .line 459
    .local v2, "newScrubberTime":J
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 460
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 461
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPosition:J

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 462
    .local v0, "bufferedPixelWidth":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 463
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 464
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    iget-wide v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 465
    .local v1, "scrubberPixelPosition":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 470
    .end local v0    # "bufferedPixelWidth":I
    .end local v1    # "scrubberPixelPosition":I
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    .line 471
    return-void

    .line 458
    .end local v2    # "newScrubberTime":J
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    goto :goto_0

    .line 467
    .restart local v2    # "newScrubberTime":J
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 468
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method private updateScrubberState()V
    .locals 4

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 452
    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberSize:I

    .line 453
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 253
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->drawTimeBar(Landroid/graphics/Canvas;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->drawPlayhead(Landroid/graphics/Canvas;)V

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 256
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 367
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 368
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    const-class v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 372
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 378
    const-class v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 379
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 380
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 384
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 385
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    .line 386
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 387
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 388
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide v0

    .line 312
    .local v0, "positionIncrement":J
    sparse-switch p1, :sswitch_data_0

    .line 335
    .end local v0    # "positionIncrement":J
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 314
    .restart local v0    # "positionIncrement":J
    :sswitch_0
    neg-long v0, v0

    .line 317
    :sswitch_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 319
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 325
    :sswitch_2
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 327
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 347
    sub-int v5, p4, p2

    .line 348
    .local v5, "width":I
    sub-int v1, p5, p3

    .line 349
    .local v1, "height":I
    iget v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    sub-int v0, v1, v6

    .line 350
    .local v0, "barY":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPaddingLeft()I

    move-result v3

    .line 351
    .local v3, "seekLeft":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 352
    .local v4, "seekRight":I
    iget v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    iget v7, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v2, v0, v6

    .line 353
    .local v2, "progressY":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget v7, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    add-int/2addr v7, v0

    invoke-virtual {v6, v3, v0, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 354
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    add-int/2addr v9, v2

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 356
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 357
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 340
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 341
    .local v1, "measureWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 342
    .local v0, "measureHeight":I
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setMeasuredDimension(II)V

    .line 343
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 361
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 362
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    :cond_0
    move v5, v4

    .line 305
    :goto_0
    return v5

    .line 263
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v1

    .line 264
    .local v1, "touchPosition":Landroid/graphics/Point;
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 265
    .local v2, "x":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 266
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_2
    move v5, v4

    .line 305
    goto :goto_0

    .line 268
    :pswitch_0
    int-to-float v6, v2

    int-to-float v7, v3

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isInSeekBar(FF)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 269
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->startScrubbing()V

    .line 270
    int-to-float v4, v2

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    .line 271
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    .line 272
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 273
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    goto :goto_0

    .line 278
    :pswitch_1
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v6, :cond_2

    .line 279
    iget v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->fineScrubYThreshold:I

    if-ge v3, v4, :cond_4

    .line 280
    iget v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    sub-int v0, v2, v4

    .line 281
    .local v0, "relativeX":I
    iget v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    div-int/lit8 v6, v0, 0x3

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    .line 286
    .end local v0    # "relativeX":I
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    .line 287
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    if-eqz v4, :cond_3

    .line 288
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    invoke-interface {v4, p0, v6, v7}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V

    .line 290
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 291
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    goto :goto_0

    .line 283
    :cond_4
    iput v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    .line 284
    int-to-float v4, v2

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    goto :goto_1

    .line 297
    :pswitch_2
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v6, :cond_2

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    move v4, v5

    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 395
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    :goto_0
    return v0

    .line 398
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    move v0, v1

    .line 399
    goto :goto_0

    .line 401
    :cond_1
    const/16 v2, 0x2000

    if-ne p1, v2, :cond_3

    .line 402
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide v2

    neg-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 412
    :cond_2
    :goto_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 405
    :cond_3
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_4

    .line 406
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 410
    goto :goto_0
.end method

.method public setAdBreakTimesMs([JI)V
    .locals 1
    .param p1, "adBreakTimesMs"    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "adBreakCount"    # I

    .prologue
    .line 236
    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 237
    iput p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adBreakCount:I

    .line 238
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adBreakTimesMs:[J

    .line 239
    return-void

    .line 236
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBufferedPosition(J)V
    .locals 1
    .param p1, "bufferedPosition"    # J

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPosition:J

    .line 222
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 226
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    .line 227
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateScrubberState()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 244
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateScrubberState()V

    .line 245
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 246
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 248
    :cond_0
    return-void
.end method

.method public setKeyCountIncrement(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 208
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 209
    iput p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    .line 210
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    .line 211
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyTimeIncrement(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 201
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    .line 203
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    .line 204
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    .line 197
    return-void
.end method

.method public setPosition(J)V
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 215
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    .line 216
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method
