.class public Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AlbumSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private actionBar:Landroid/support/v7/app/ActionBar;

.field private adapter:Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

.field private albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/darsh/multipleimageselect/models/Album;",
            ">;"
        }
    .end annotation
.end field

.field private errorDisplay:Landroid/widget/TextView;

.field private grantPermission:Landroid/widget/Button;

.field private gridView:Landroid/widget/GridView;

.field private handler:Landroid/os/Handler;

.field private observer:Landroid/database/ContentObserver;

.field private progressBar:Landroid/widget/ProgressBar;

.field private final projection:[Ljava/lang/String;

.field private requestPermission:Landroid/widget/TextView;

.field private final requiredPermissions:[Ljava/lang/String;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 44
    const-class v0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 50
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->requiredPermissions:[Ljava/lang/String;

    const/4 v1, 0x2

    .line 64
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "bucket_display_name"

    aput-object v2, v1, v3

    const-string v2, "_data"

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->projection:[Ljava/lang/String;

    return-void
.end method

.method private abortLoading()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 320
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->requestPermission()V

    return-void
.end method

.method static synthetic access$100(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->albums:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->albums:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)[Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->projection:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->hidePermissionHelperUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->loadAlbums()V

    return-void
.end method

.method static synthetic access$400(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->showPermissionHelperUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/GridView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->gridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    return-object p0
.end method

.method static synthetic access$702(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;)Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->orientationBasedUI(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->errorDisplay:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkIfPermissionGranted()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 187
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->requestPermission()V

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d3

    .line 194
    iput v1, v0, Landroid/os/Message;->what:I

    .line 195
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private hidePermissionHelperUI()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->requestPermission:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->grantPermission:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private loadAlbums()V
    .locals 2

    .line 302
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->abortLoading()V

    .line 304
    new-instance v0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$AlbumLoaderRunnable;-><init>(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$1;)V

    .line 305
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->thread:Ljava/lang/Thread;

    .line 306
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private orientationBasedUI(I)V
    .locals 5

    .line 259
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 260
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 261
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 263
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v4, :cond_0

    .line 264
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v0, v2

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    invoke-virtual {v1, v0}, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->setLayoutParams(I)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->gridView:Landroid/widget/GridView;

    if-ne p1, v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method private requestPermission()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->requiredPermissions:[Ljava/lang/String;

    const/16 v1, 0x17

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private showPermissionHelperUI()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->requestPermission:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->grantPermission:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 279
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 282
    invoke-virtual {p0, p1, p3}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 283
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 272
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, v0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->setResult(I)V

    .line 274
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 255
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->orientationBasedUI(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget p1, Lcom/darsh/multipleimageselect/R$layout;->activity_album_select:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->setContentView(I)V

    .line 71
    sget p1, Lcom/darsh/multipleimageselect/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 72
    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 74
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 75
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 77
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lcom/darsh/multipleimageselect/R$drawable;->ic_arrow_back:I

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->b(I)V

    .line 79
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 80
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    sget v0, Lcom/darsh/multipleimageselect/R$string;->album_view:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->a(I)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->finish()V

    :cond_1
    const-string v0, "limit"

    const/16 v1, 0xa

    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/darsh/multipleimageselect/helpers/Constants;->limit:I

    .line 89
    sget p1, Lcom/darsh/multipleimageselect/R$id;->text_view_error:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->errorDisplay:Landroid/widget/TextView;

    .line 90
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->errorDisplay:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    sget p1, Lcom/darsh/multipleimageselect/R$id;->text_view_request_permission:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->requestPermission:Landroid/widget/TextView;

    .line 93
    sget p1, Lcom/darsh/multipleimageselect/R$id;->button_grant_permission:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->grantPermission:Landroid/widget/Button;

    .line 94
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->grantPermission:Landroid/widget/Button;

    new-instance v0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$1;-><init>(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->hidePermissionHelperUI()V

    .line 102
    sget p1, Lcom/darsh/multipleimageselect/R$id;->progress_bar_album_select:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 103
    sget p1, Lcom/darsh/multipleimageselect/R$id;->grid_view_album_select:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->gridView:Landroid/widget/GridView;

    .line 104
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$2;-><init>(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 240
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 242
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 245
    :cond_0
    iput-object v1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->albums:Ljava/util/ArrayList;

    .line 246
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;

    invoke-virtual {v0}, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->releaseResources()V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x17

    if-ne p1, p2, :cond_1

    .line 207
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 208
    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget p2, p3, p2

    if-nez p2, :cond_0

    const/16 p2, 0x7d3

    goto :goto_0

    :cond_0
    const/16 p2, 0x7d4

    :goto_0
    iput p2, p1, Landroid/os/Message;->what:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 116
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 118
    new-instance v0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;

    invoke-direct {v0, p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$3;-><init>(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;)V

    iput-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->handler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$4;

    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity$4;-><init>(Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->observer:Landroid/database/ContentObserver;

    .line 181
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->observer:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->checkIfPermissionGranted()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 225
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 227
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->abortLoading()V

    .line 229
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->observer:Landroid/database/ContentObserver;

    .line 232
    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 234
    iput-object v0, p0, Lcom/darsh/multipleimageselect/activities/AlbumSelectActivity;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method
