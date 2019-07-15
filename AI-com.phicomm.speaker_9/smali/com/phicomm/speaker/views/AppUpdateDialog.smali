.class public Lcom/phicomm/speaker/views/AppUpdateDialog;
.super Landroid/app/Dialog;
.source "AppUpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/AppUpdateDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/phicomm/speaker/c/c;

.field private c:Z

.field private d:Lcom/phicomm/speaker/views/AppUpdateDialog$a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field llUpdateHint:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09016f
    .end annotation
.end field

.field mClDownload:Landroid/support/constraint/ConstraintLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09006c
    .end annotation
.end field

.field mLlBtn:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09015f
    .end annotation
.end field

.field mPb:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ab
    .end annotation
.end field

.field mTvCancel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090259
    .end annotation
.end field

.field mTvDownload:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090284
    .end annotation
.end field

.field mTvDownloadStatus:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090285
    .end annotation
.end field

.field mTvExtra:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09028a
    .end annotation
.end field

.field mTvMessage:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a2
    .end annotation
.end field

.field mTvProgress:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c7
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902fe
    .end annotation
.end field

.field mViewLine1:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090312
    .end annotation
.end field

.field mViewLine2:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090313
    .end annotation
.end field

.field tvCancelDownload:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09025a
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/phicomm/speaker/c/c;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 86
    iput-object p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->a:Landroid/content/Context;

    .line 87
    iput-boolean p6, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->c:Z

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->requestWindowFeature(I)Z

    .line 89
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0b007d

    .line 90
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/AppUpdateDialog;->setContentView(I)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/views/AppUpdateDialog;->setCancelable(Z)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/views/AppUpdateDialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    .line 94
    iput-object p8, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->b:Lcom/phicomm/speaker/c/c;

    .line 95
    iget-object p8, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p2, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p2, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p8

    invoke-virtual {p2, p8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 98
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 99
    iget-object p2, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvCancel:Landroid/widget/TextView;

    const/16 p8, 0x8

    invoke-virtual {p2, p8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object p2, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mViewLine2:Landroid/view/View;

    invoke-virtual {p2, p8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    iget-object p2, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownload:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p6, :cond_1

    .line 106
    iget-object p2, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownload:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p6, 0x7f06006f

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    :cond_1
    iput-object p3, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->e:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->f:Ljava/lang/String;

    .line 110
    iput-object p5, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->g:Ljava/lang/String;

    .line 111
    iput-object p7, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->i:Ljava/lang/String;

    .line 113
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 114
    new-array p2, v0, [I

    const p3, 0x10100a1

    aput p3, p2, v3

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 115
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f08015e

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 114
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 116
    new-array p2, v0, [I

    const p3, -0x10100a1

    aput p3, p2, v3

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 117
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f08015d

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 116
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object p2, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mPb:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->a(Z)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->llUpdateHint:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->tvCancelDownload:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->h:Z

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mClDownload:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mViewLine1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mLlBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvExtra:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvMessage:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u6700\u65b0\u7248\u672c\uff0c\u786e\u5b9a\u9000\u51fa\u4e0b\u8f7d\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvCancel:Landroid/widget/TextView;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownload:Landroid/widget/TextView;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->d:Lcom/phicomm/speaker/views/AppUpdateDialog$a;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->d:Lcom/phicomm/speaker/views/AppUpdateDialog$a;

    invoke-interface {v0}, Lcom/phicomm/speaker/views/AppUpdateDialog$a;->a()V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mPb:Landroid/widget/ProgressBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSelected(Z)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->llUpdateHint:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->tvCancelDownload:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iput-boolean v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->h:Z

    .line 203
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mViewLine1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mLlBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->c:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mViewLine1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvExtra:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mClDownload:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownload:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    .line 224
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->a(Z)V

    .line 225
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mPb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 226
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownloadStatus:Landroid/widget/TextView;

    const-string v1, " \u6b63\u5728\u4e0b\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-boolean p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->c:Z

    if-nez p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvExtra:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvExtra:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/phicomm/speaker/views/AppUpdateDialog$a;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->d:Lcom/phicomm/speaker/views/AppUpdateDialog$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->a(Z)V

    .line 251
    iget-object v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownloadStatus:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-boolean p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->c:Z

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvExtra:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvExtra:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvExtra:Landroid/widget/TextView;

    const-string v0, "\u5173\u95ed"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public tv_cancel()V
    .locals 6
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090259
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->h:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->d:Lcom/phicomm/speaker/views/AppUpdateDialog$a;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->d:Lcom/phicomm/speaker/views/AppUpdateDialog$a;

    invoke-interface {v0}, Lcom/phicomm/speaker/views/AppUpdateDialog$a;->b()V

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->b()V

    goto :goto_0

    :cond_1
    const-string v0, "\u6682\u4e0d\u66f4\u65b0"

    .line 132
    iget-object v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_update_show_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/phicomm/speaker/f/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/y;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public tv_download()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090284
        }
    .end annotation

    .line 154
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->h:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->dismiss()V

    return-void

    .line 158
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 159
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->b:Lcom/phicomm/speaker/c/c;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->b:Lcom/phicomm/speaker/c/c;

    iget-object v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownload:Landroid/widget/TextView;

    invoke-interface {v0, p0, v1}, Lcom/phicomm/speaker/c/c;->a(Landroid/app/Dialog;Landroid/view/View;)V

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ad;->c(Landroid/view/View;I)V

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownload:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mLlBtn:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mViewLine1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mClDownload:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 170
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->c:Z

    if-nez v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvExtra:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mViewLine1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public tv_extra()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09028a
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvExtra:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog;->a:Landroid/content/Context;

    const v2, 0x7f0f004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->a()V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/AppUpdateDialog;->dismiss()V

    :goto_0
    return-void
.end method
