.class public Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ImageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;
    }
.end annotation


# instance fields
.field private actionBar:Landroid/support/v7/app/ActionBar;

.field private actionMode:Landroid/view/ActionMode;

.field private adapter:Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

.field private album:Ljava/lang/String;

.field private callback:Landroid/view/ActionMode$Callback;

.field private countSelected:I

.field private errorDisplay:Landroid/widget/TextView;

.field private grantPermission:Landroid/widget/Button;

.field private gridView:Landroid/widget/GridView;

.field private handler:Landroid/os/Handler;

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/darsh/multipleimageselect/models/Image;",
            ">;"
        }
    .end annotation
.end field

.field private observer:Landroid/database/ContentObserver;

.field private progressBar:Landroid/widget/ProgressBar;

.field private final projection:[Ljava/lang/String;

.field private requestPermission:Landroid/widget/TextView;

.field private final requiredPermissions:[Ljava/lang/String;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 46
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 52
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->requiredPermissions:[Ljava/lang/String;

    const/4 v1, 0x3

    .line 69
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "_display_name"

    aput-object v2, v1, v0

    const-string v0, "_data"

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->projection:[Ljava/lang/String;

    .line 307
    new-instance v0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$5;

    invoke-direct {v0, p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$5;-><init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V

    iput-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->callback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method private abortLoading()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 400
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->requestPermission()V

    return-void
.end method

.method static synthetic access$100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/view/ActionMode;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->actionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;)Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->actionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->orientationBasedUI(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->errorDisplay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->sendIntent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->deselectAll()V

    return-void
.end method

.method static synthetic access$1700(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)[Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->projection:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->album:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/view/ActionMode$Callback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->callback:Landroid/view/ActionMode$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->toggleSelection(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->countSelected:I

    return p0
.end method

.method static synthetic access$402(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->countSelected:I

    return p1
.end method

.method static synthetic access$500(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->hidePermissionHelperUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->loadImages()V

    return-void
.end method

.method static synthetic access$700(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->showPermissionHelperUI()V

    return-void
.end method

.method static synthetic access$800(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/widget/GridView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->gridView:Landroid/widget/GridView;

    return-object p0
.end method

.method private checkIfPermissionGranted()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 210
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->requestPermission()V

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d3

    .line 217
    iput v1, v0, Landroid/os/Message;->what:I

    .line 218
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private deselectAll()V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 359
    iget-object v3, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/darsh/multipleimageselect/models/Image;

    iput-boolean v1, v3, Lcom/darsh/multipleimageselect/models/Image;->isSelected:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_0
    iput v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->countSelected:I

    .line 362
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    invoke-virtual {v0}, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getSelected()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/darsh/multipleimageselect/models/Image;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 368
    iget-object v3, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/darsh/multipleimageselect/models/Image;

    iget-boolean v3, v3, Lcom/darsh/multipleimageselect/models/Image;->isSelected:Z

    if-eqz v3, :cond_0

    .line 369
    iget-object v3, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private hidePermissionHelperUI()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->requestPermission:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->grantPermission:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private loadImages()V
    .locals 2

    .line 383
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->abortLoading()V

    .line 385
    new-instance v0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$ImageLoaderRunnable;-><init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$1;)V

    .line 386
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->thread:Ljava/lang/Thread;

    .line 387
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private orientationBasedUI(I)V
    .locals 5

    .line 282
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 283
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 284
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 286
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v4, :cond_0

    .line 287
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v0, v2

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    invoke-virtual {v1, v0}, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->setLayoutParams(I)V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->gridView:Landroid/widget/GridView;

    if-ne p1, v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method private requestPermission()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->requiredPermissions:[Ljava/lang/String;

    const/16 v1, 0x17

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private sendIntent()V
    .locals 3

    .line 376
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "images"

    .line 377
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getSelected()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 378
    invoke-virtual {p0, v1, v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 379
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->finish()V

    return-void
.end method

.method private showPermissionHelperUI()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->requestPermission:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->grantPermission:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private toggleSelection(I)V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darsh/multipleimageselect/models/Image;

    iget-boolean v0, v0, Lcom/darsh/multipleimageselect/models/Image;->isSelected:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->countSelected:I

    sget v2, Lcom/darsh/multipleimageselect/helpers/Constants;->limit:I

    if-lt v0, v2, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/darsh/multipleimageselect/R$string;->limit_exceeded:I

    invoke-virtual {p0, v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/darsh/multipleimageselect/helpers/Constants;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darsh/multipleimageselect/models/Image;

    iget-object v2, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/darsh/multipleimageselect/models/Image;

    iget-boolean v2, v2, Lcom/darsh/multipleimageselect/models/Image;->isSelected:Z

    xor-int/2addr v2, v1

    iput-boolean v2, v0, Lcom/darsh/multipleimageselect/models/Image;->isSelected:Z

    .line 349
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/darsh/multipleimageselect/models/Image;

    iget-boolean p1, p1, Lcom/darsh/multipleimageselect/models/Image;->isSelected:Z

    if-eqz p1, :cond_1

    .line 350
    iget p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->countSelected:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->countSelected:I

    goto :goto_0

    .line 352
    :cond_1
    iget p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->countSelected:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->countSelected:I

    .line 354
    :goto_0
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    invoke-virtual {p1}, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 278
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->orientationBasedUI(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget p1, Lcom/darsh/multipleimageselect/R$layout;->activity_image_select:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->setContentView(I)V

    .line 76
    sget p1, Lcom/darsh/multipleimageselect/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 77
    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 79
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 80
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 82
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lcom/darsh/multipleimageselect/R$drawable;->ic_arrow_back:I

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->b(I)V

    .line 84
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 85
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    sget v0, Lcom/darsh/multipleimageselect/R$string;->image_view:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->a(I)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->finish()V

    :cond_1
    const-string v0, "album"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->album:Ljava/lang/String;

    .line 94
    sget p1, Lcom/darsh/multipleimageselect/R$id;->text_view_error:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->errorDisplay:Landroid/widget/TextView;

    .line 95
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->errorDisplay:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    sget p1, Lcom/darsh/multipleimageselect/R$id;->text_view_request_permission:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->requestPermission:Landroid/widget/TextView;

    .line 98
    sget p1, Lcom/darsh/multipleimageselect/R$id;->button_grant_permission:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->grantPermission:Landroid/widget/Button;

    .line 99
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->grantPermission:Landroid/widget/Button;

    new-instance v0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$1;-><init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->hidePermissionHelperUI()V

    .line 107
    sget p1, Lcom/darsh/multipleimageselect/R$id;->progress_bar_image_select:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 108
    sget p1, Lcom/darsh/multipleimageselect/R$id;->grid_view_image_select:I

    invoke-virtual {p0, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->gridView:Landroid/widget/GridView;

    .line 109
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;-><init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 263
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 265
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_0
    iput-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->images:Ljava/util/ArrayList;

    .line 269
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->adapter:Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;

    invoke-virtual {v0}, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->releaseResources()V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x17

    if-ne p1, p2, :cond_1

    .line 230
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 231
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

    .line 232
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 127
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 129
    new-instance v0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;

    invoke-direct {v0, p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$3;-><init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V

    iput-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->handler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$4;

    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$4;-><init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->observer:Landroid/database/ContentObserver;

    .line 204
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->observer:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->checkIfPermissionGranted()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 248
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 250
    invoke-direct {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->abortLoading()V

    .line 252
    invoke-virtual {p0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->observer:Landroid/database/ContentObserver;

    .line 255
    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 257
    iput-object v0, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method
