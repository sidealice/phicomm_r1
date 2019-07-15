.class public Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.super Landroid/widget/FrameLayout;
.source "PlaybackControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

.field public static final DEFAULT_FAST_FORWARD_MS:I = 0x3a98

.field public static final DEFAULT_REWIND_MS:I = 0x1388

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field private static final MAX_POSITION_FOR_SEEK_TO_PREVIOUS:J = 0xbb8L

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# instance fields
.field private adBreakTimesMs:[J

.field private final componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

.field private controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

.field private final durationView:Landroid/widget/TextView;

.field private final fastForwardButton:Landroid/view/View;

.field private fastForwardMs:I

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final hideAction:Ljava/lang/Runnable;

.field private hideAtMs:J

.field private isAttachedToWindow:Z

.field private multiWindowTimeBar:Z

.field private final nextButton:Landroid/view/View;

.field private final pauseButton:Landroid/view/View;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final playButton:Landroid/view/View;

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final positionView:Landroid/widget/TextView;

.field private final previousButton:Landroid/view/View;

.field private final rewindButton:Landroid/view/View;

.field private rewindMs:I

.field private scrubbing:Z

.field private showMultiWindowTimeBar:Z

.field private showTimeoutMs:I

.field private final timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v3, 0x1388

    const/4 v5, 0x0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 254
    new-instance v2, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 261
    new-instance v2, Lcom/google/android/exoplayer2/ui/PlaybackControlView$3;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$3;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    .line 279
    sget v1, Lcom/google/android/exoplayer2/ui/R$layout;->exo_playback_control_view:I

    .line 280
    .local v1, "controllerLayoutId":I
    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 281
    const/16 v2, 0x3a98

    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 282
    iput v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    .line 283
    if-eqz p2, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView:[I

    invoke-virtual {v2, p2, v3, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 287
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_rewind_increment:I

    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 288
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_fastforward_increment:I

    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 290
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_show_timeout:I

    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    .line 291
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_controller_layout_id:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 294
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 298
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 300
    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    .line 301
    new-array v2, v5, [J

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    .line 302
    new-instance v2, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    .line 303
    sget-object v2, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    .line 305
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 306
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setDescendantFocusability(I)V

    .line 308
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    .line 309
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    .line 310
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/TimeBar;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 311
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    .line 314
    :cond_1
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_play:I

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    .line 315
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 316
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    :cond_2
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_pause:I

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    .line 319
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 320
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :cond_3
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    .line 323
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 324
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_4
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    .line 327
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 328
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :cond_5
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    .line 331
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 332
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :cond_6
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    .line 335
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 336
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :cond_7
    return-void

    .line 294
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updatePlayPauseButton()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateTimeBarMode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->next()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previous()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForward()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewind()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->scrubbing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/util/Formatter;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;
    .param p1, "x1"    # J

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekToTimebarPosition(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAfterTimeout()V

    return-void
.end method

.method private static canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Period;)Z
    .locals 8
    .param p0, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p1, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .prologue
    const/4 v2, 0x0

    .line 861
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v2

    .line 864
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    .line 865
    .local v1, "periodCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 866
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 867
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/Timeline$Period;->isAd:Z

    if-nez v3, :cond_2

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 865
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 871
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private fastForward()V
    .locals 4

    .prologue
    .line 712
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    if-gtz v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    goto :goto_0
.end method

.method private hideAfterTimeout()V
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 484
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    if-lez v0, :cond_1

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    .line 486
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    goto :goto_0
.end method

.method private static isHandledMediaKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 844
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x59

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private next()V
    .locals 6

    .prologue
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 692
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 693
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 697
    .local v1, "windowIndex":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 698
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    goto :goto_0

    .line 699
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v2, :cond_0

    .line 700
    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    goto :goto_0
.end method

.method private previous()V
    .locals 6

    .prologue
    .line 677
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 678
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 682
    .local v1, "windowIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 683
    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v2, :cond_2

    .line 685
    :cond_1
    add-int/lit8 v2, v1, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    goto :goto_0

    .line 687
    :cond_2
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    goto :goto_0
.end method

.method private requestPlayPauseFocus()V
    .locals 2

    .prologue
    .line 650
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 651
    .local v0, "playing":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 652
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 656
    :cond_0
    :goto_1
    return-void

    .line 650
    .end local v0    # "playing":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 653
    .restart local v0    # "playing":Z
    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method private rewind()V
    .locals 4

    .prologue
    .line 705
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    if-gtz v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    goto :goto_0
.end method

.method private seekTo(IJ)V
    .locals 4
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .prologue
    .line 723
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/ExoPlayer;IJ)Z

    move-result v0

    .line 724
    .local v0, "dispatched":Z
    if-nez v0, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    .line 729
    :cond_0
    return-void
.end method

.method private seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    .line 720
    return-void
.end method

.method private seekToTimebarPosition(J)V
    .locals 11
    .param p1, "timebarPositionMs"    # J

    .prologue
    .line 732
    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    if-eqz v8, :cond_7

    .line 733
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    .line 734
    .local v6, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v7

    .line 735
    .local v7, "windowCount":I
    move-wide v4, p1

    .line 736
    .local v4, "remainingMs":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_2

    .line 737
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v6, v0, v8}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 738
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v1, v8, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .local v1, "j":I
    :goto_1
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt v1, v8, :cond_6

    .line 739
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v6, v1, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v8

    iget-boolean v8, v8, Lcom/google/android/exoplayer2/Timeline$Period;->isAd:Z

    if-nez v8, :cond_5

    .line 740
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationMs()J

    move-result-wide v2

    .line 741
    .local v2, "periodDurationMs":J
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v2, v8

    if-nez v8, :cond_0

    .line 743
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8

    .line 745
    :cond_0
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v1, v8, :cond_1

    .line 746
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Timeline$Window;->getPositionInFirstPeriodMs()J

    move-result-wide v8

    sub-long/2addr v2, v8

    .line 748
    :cond_1
    add-int/lit8 v8, v7, -0x1

    if-ne v0, v8, :cond_3

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ne v1, v8, :cond_3

    cmp-long v8, v4, v2

    if-ltz v8, :cond_3

    .line 751
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v8

    invoke-direct {p0, v0, v8, v9}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    .line 765
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "periodDurationMs":J
    .end local v4    # "remainingMs":J
    .end local v6    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v7    # "windowCount":I
    :cond_2
    :goto_2
    return-void

    .line 754
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "periodDurationMs":J
    .restart local v4    # "remainingMs":J
    .restart local v6    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .restart local v7    # "windowCount":I
    :cond_3
    cmp-long v8, v4, v2

    if-gez v8, :cond_4

    .line 755
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v8

    add-long/2addr v8, v4

    invoke-direct {p0, v0, v8, v9}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    goto :goto_2

    .line 758
    :cond_4
    sub-long/2addr v4, v2

    .line 738
    .end local v2    # "periodDurationMs":J
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 736
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v4    # "remainingMs":J
    .end local v6    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v7    # "windowCount":I
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    goto :goto_2
.end method

.method private setButtonEnabled(ZLandroid/view/View;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 659
    if-nez p2, :cond_0

    .line 669
    :goto_0
    return-void

    .line 662
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 663
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 664
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setViewAlphaV11(Landroid/view/View;F)V

    .line 665
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 664
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_1

    .line 667
    :cond_2
    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method private setViewAlphaV11(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 674
    return-void
.end method

.method private updateAll()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updatePlayPauseButton()V

    .line 496
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    .line 497
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    .line 498
    return-void
.end method

.method private updateNavigation()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-nez v8, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    .line 524
    .local v4, "timeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    move v2, v7

    .line 525
    .local v2, "haveNonEmptyTimeline":Z
    :goto_2
    const/4 v3, 0x0

    .line 526
    .local v3, "isSeekable":Z
    const/4 v1, 0x0

    .line 527
    .local v1, "enablePrevious":Z
    const/4 v0, 0x0

    .line 528
    .local v0, "enableNext":Z
    if-eqz v2, :cond_4

    .line 529
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v5

    .line 530
    .local v5, "windowIndex":I
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v4, v5, v8}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 531
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v3, v8, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    .line 532
    if-gtz v5, :cond_2

    if-nez v3, :cond_2

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v8, :cond_7

    :cond_2
    move v1, v7

    .line 533
    :goto_3
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_3

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v8, :cond_8

    :cond_3
    move v0, v7

    .line 534
    :goto_4
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v8, v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v8

    iget-boolean v8, v8, Lcom/google/android/exoplayer2/Timeline$Period;->isAd:Z

    if-eqz v8, :cond_4

    .line 536
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    .line 539
    .end local v5    # "windowIndex":I
    :cond_4
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    invoke-direct {p0, v1, v8}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 540
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    invoke-direct {p0, v0, v8}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 541
    iget v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    if-lez v8, :cond_9

    if-eqz v3, :cond_9

    move v8, v7

    :goto_5
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 542
    iget v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    if-lez v8, :cond_a

    if-eqz v3, :cond_a

    :goto_6
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    invoke-direct {p0, v7, v6}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 543
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v6, :cond_0

    .line 544
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v6, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setEnabled(Z)V

    goto :goto_0

    .line 523
    .end local v0    # "enableNext":Z
    .end local v1    # "enablePrevious":Z
    .end local v2    # "haveNonEmptyTimeline":Z
    .end local v3    # "isSeekable":Z
    .end local v4    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .restart local v4    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_6
    move v2, v6

    .line 524
    goto :goto_2

    .restart local v0    # "enableNext":Z
    .restart local v1    # "enablePrevious":Z
    .restart local v2    # "haveNonEmptyTimeline":Z
    .restart local v3    # "isSeekable":Z
    .restart local v5    # "windowIndex":I
    :cond_7
    move v1, v6

    .line 532
    goto :goto_3

    :cond_8
    move v0, v6

    .line 533
    goto :goto_4

    .end local v5    # "windowIndex":I
    :cond_9
    move v8, v6

    .line 541
    goto :goto_5

    :cond_a
    move v7, v6

    .line 542
    goto :goto_6
.end method

.method private updatePlayPauseButton()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 501
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-nez v4, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    const/4 v1, 0x0

    .line 505
    .local v1, "requestPlayPauseFocus":Z
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 506
    .local v0, "playing":Z
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 507
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    :goto_2
    or-int/2addr v1, v4

    .line 508
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v0, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 510
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 511
    if-nez v0, :cond_7

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    or-int/2addr v1, v2

    .line 512
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-nez v0, :cond_8

    :goto_5
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 514
    :cond_3
    if-eqz v1, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->requestPlayPauseFocus()V

    goto :goto_0

    .end local v0    # "playing":Z
    :cond_4
    move v0, v3

    .line 505
    goto :goto_1

    .restart local v0    # "playing":Z
    :cond_5
    move v4, v3

    .line 507
    goto :goto_2

    :cond_6
    move v4, v3

    .line 508
    goto :goto_3

    :cond_7
    move v2, v3

    .line 511
    goto :goto_4

    :cond_8
    move v5, v3

    .line 512
    goto :goto_5
.end method

.method private updateProgress()V
    .locals 36

    .prologue
    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v32

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    const-wide/16 v26, 0x0

    .line 562
    .local v26, "position":J
    const-wide/16 v6, 0x0

    .line 563
    .local v6, "bufferedPosition":J
    const-wide/16 v12, 0x0

    .line 564
    .local v12, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_d

    .line 565
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v30

    .line 567
    .local v30, "timeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v31

    .line 568
    .local v31, "windowCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v24

    .line 569
    .local v24, "periodIndex":I
    const-wide/16 v28, 0x0

    .line 570
    .local v28, "positionUs":J
    const-wide/16 v8, 0x0

    .line 571
    .local v8, "bufferedPositionUs":J
    const-wide/16 v14, 0x0

    .line 572
    .local v14, "durationUs":J
    const/16 v17, 0x0

    .line 573
    .local v17, "isInAdBreak":Z
    const/16 v18, 0x0

    .line 574
    .local v18, "isPlayingAd":Z
    const/4 v4, 0x0

    .line 575
    .local v4, "adBreakCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v16

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    move/from16 v19, v0

    .local v19, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    move/from16 v32, v0

    move/from16 v0, v19

    move/from16 v1, v32

    if-gt v0, v1, :cond_a

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v32

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->isAd:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    .line 579
    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v32, 0x1

    :goto_3
    or-int v18, v18, v32

    .line 580
    if-nez v17, :cond_3

    .line 581
    const/16 v17, 0x1

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ne v4, v0, :cond_2

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_5

    const/16 v32, 0x1

    :goto_4
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    .line 586
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    move-object/from16 v32, v0

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "adBreakCount":I
    .local v5, "adBreakCount":I
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v34

    aput-wide v34, v32, v4

    move v4, v5

    .line 577
    .end local v5    # "adBreakCount":I
    .restart local v4    # "adBreakCount":I
    :cond_3
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 579
    :cond_4
    const/16 v32, 0x0

    goto :goto_3

    .line 583
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    goto :goto_4

    .line 589
    :cond_6
    const/16 v17, 0x0

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v22

    .line 591
    .local v22, "periodDurationUs":J
    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v32, v22, v32

    if-eqz v32, :cond_9

    const/16 v32, 0x1

    :goto_6
    invoke-static/range {v32 .. v32}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 592
    move-wide/from16 v20, v22

    .line 593
    .local v20, "periodDurationInWindowUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    move/from16 v32, v0

    move/from16 v0, v19

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    move-wide/from16 v32, v0

    sub-long v20, v20, v32

    .line 596
    :cond_7
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 597
    add-long v28, v28, v20

    .line 598
    add-long v8, v8, v20

    .line 600
    :cond_8
    add-long v14, v14, v20

    goto :goto_5

    .line 591
    .end local v20    # "periodDurationInWindowUs":J
    :cond_9
    const/16 v32, 0x0

    goto :goto_6

    .line 575
    .end local v22    # "periodDurationUs":J
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 604
    .end local v19    # "j":I
    :cond_b
    invoke-static/range {v28 .. v29}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v26

    .line 605
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v6

    .line 606
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v12

    .line 607
    if-nez v18, :cond_c

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v32

    add-long v26, v26, v32

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v32

    add-long v6, v6, v32

    .line 611
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v32, v0

    if-eqz v32, :cond_d

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v4}, Lcom/google/android/exoplayer2/ui/TimeBar;->setAdBreakTimesMs([JI)V

    .line 620
    .end local v4    # "adBreakCount":I
    .end local v8    # "bufferedPositionUs":J
    .end local v14    # "durationUs":J
    .end local v16    # "i":I
    .end local v17    # "isInAdBreak":Z
    .end local v18    # "isPlayingAd":Z
    .end local v24    # "periodIndex":I
    .end local v28    # "positionUs":J
    .end local v30    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v31    # "windowCount":I
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    if-eqz v32, :cond_e

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v12, v13}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->scrubbing:Z

    move/from16 v32, v0

    if-nez v32, :cond_f

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v32, v0

    if-eqz v32, :cond_10

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/TimeBar;->setPosition(J)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v6, v7}, Lcom/google/android/exoplayer2/ui/TimeBar;->setBufferedPosition(J)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v12, v13}, Lcom/google/android/exoplayer2/ui/TimeBar;->setDuration(J)V

    .line 633
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    move-object/from16 v32, v0

    if-nez v32, :cond_13

    const/16 v25, 0x1

    .line 635
    .local v25, "playbackState":I
    :goto_8
    const/16 v32, 0x1

    move/from16 v0, v25

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    const/16 v32, 0x4

    move/from16 v0, v25

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v32

    if-eqz v32, :cond_14

    const/16 v32, 0x3

    move/from16 v0, v25

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 638
    const-wide/16 v32, 0x3e8

    const-wide/16 v34, 0x3e8

    rem-long v34, v26, v34

    sub-long v10, v32, v34

    .line 639
    .local v10, "delayMs":J
    const-wide/16 v32, 0xc8

    cmp-long v32, v10, v32

    if-gez v32, :cond_11

    .line 640
    const-wide/16 v32, 0x3e8

    add-long v10, v10, v32

    .line 645
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v10, v11}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 615
    .end local v10    # "delayMs":J
    .end local v25    # "playbackState":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v26

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v6

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v12

    goto/16 :goto_7

    .line 634
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v25

    goto :goto_8

    .line 643
    .restart local v25    # "playbackState":I
    :cond_14
    const-wide/16 v10, 0x3e8

    .restart local v10    # "delayMs":J
    goto :goto_9
.end method

.method private updateTimeBarMode()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showMultiWindowTimeBar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 553
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 793
    .local v0, "handled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 794
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->show()V

    .line 796
    :cond_1
    return v0

    .line 792
    .end local v0    # "handled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 807
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 808
    .local v0, "keyCode":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isHandledMediaKey(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 839
    :goto_0
    return v2

    .line 811
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 812
    sparse-switch v0, :sswitch_data_0

    .line 838
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->show()V

    goto :goto_0

    .line 814
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForward()V

    goto :goto_1

    .line 817
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewind()V

    goto :goto_1

    .line 820
    :sswitch_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v2

    :cond_3
    invoke-interface {v3, v4, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayer;Z)Z

    goto :goto_1

    .line 823
    :sswitch_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v3, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayer;Z)Z

    goto :goto_1

    .line 826
    :sswitch_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3, v4, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayer;Z)Z

    goto :goto_1

    .line 829
    :sswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->next()V

    goto :goto_1

    .line 832
    :sswitch_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previous()V

    goto :goto_1

    .line 812
    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_2
        0x57 -> :sswitch_5
        0x58 -> :sswitch_6
        0x59 -> :sswitch_1
        0x5a -> :sswitch_0
        0x7e -> :sswitch_3
        0x7f -> :sswitch_4
    .end sparse-switch
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 471
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    .line 473
    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 6

    .prologue
    .line 769
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 770
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    .line 771
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 772
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 773
    .local v0, "delayMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 774
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    .line 779
    .end local v0    # "delayMs":J
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    .line 780
    return-void

    .line 776
    .restart local v0    # "delayMs":J
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 784
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    .line 786
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 787
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 788
    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;)V
    .locals 0
    .param p1, "controlDispatcher"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    .prologue
    .line 395
    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    .end local p1    # "controlDispatcher":Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    .line 397
    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0
    .param p1, "fastForwardMs"    # I

    .prologue
    .line 417
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 418
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    .line 419
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 2
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-ne v0, p1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 359
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 360
    if-eqz p1, :cond_2

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 363
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    goto :goto_0
.end method

.method public setRewindIncrementMs(I)V
    .locals 0
    .param p1, "rewindMs"    # I

    .prologue
    .line 406
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 407
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    .line 408
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .param p1, "showMultiWindowTimeBar"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showMultiWindowTimeBar:Z

    .line 376
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateTimeBarMode()V

    .line 377
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0
    .param p1, "showTimeoutMs"    # I

    .prologue
    .line 440
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    .line 441
    return-void
.end method

.method public setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    .line 386
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 453
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    .line 454
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->requestPlayPauseFocus()V

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAfterTimeout()V

    .line 458
    return-void
.end method
