.class public abstract Lcom/phicomm/speaker/base/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field private a:Lbutterknife/Unbinder;

.field protected c:Lcom/phicomm/speaker/views/LoadingDialog;

.field public mIvBack:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900dd
    .end annotation
.end field

.field mIvMenu:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09010b
    .end annotation
.end field

.field public mTvBack:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090252
    .end annotation
.end field

.field public mTvMenu:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a1
    .end annotation
.end field

.field public mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902fe
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(ILandroid/content/DialogInterface$OnDismissListener;J)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/views/LoadingDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/views/LoadingDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 274
    iget-object p2, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-virtual {p2, p1, p3, p4}, Lcom/phicomm/speaker/views/LoadingDialog;->a(IJ)V

    return-void
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/views/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/phicomm/speaker/views/LoadingDialog;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Z)Z
    .locals 8

    .line 91
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.view.MiuiWindowManager$LayoutParams"

    .line 94
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "setExtraFlags"

    const/4 v4, 0x2

    .line 98
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception p1

    .line 102
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public b(ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/views/LoadingDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/views/LoadingDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 266
    iget-object p2, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    sget-wide v0, Lcom/phicomm/speaker/views/LoadingDialog;->a:J

    invoke-virtual {p2, p1, v0, v1}, Lcom/phicomm/speaker/views/LoadingDialog;->a(IJ)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseActivity;->finish()V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mIvBack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvBack:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvBack:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvMenu:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvMenu:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/phicomm/speaker/base/BaseActivity;->mIvMenu:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvBack:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/views/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/LoadingDialog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/views/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    sget-wide v1, Lcom/phicomm/speaker/views/LoadingDialog;->a:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/phicomm/speaker/views/LoadingDialog;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvMenu:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object p1, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvMenu:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/phicomm/speaker/base/BaseActivity;->mIvMenu:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvMenu:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mIvBack:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public h(I)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvMenu:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/base/BaseActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method public i(I)V
    .locals 2

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mTvMenu:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mIvMenu:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->mIvMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public iv_back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900dd
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseActivity;->c()V

    return-void
.end method

.method public iv_menu(Landroid/widget/ImageView;)V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09010b
        }
    .end annotation

    .line 229
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public j()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/phicomm/speaker/views/LoadingDialog;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/views/LoadingDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    sget-wide v1, Lcom/phicomm/speaker/views/LoadingDialog;->a:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/phicomm/speaker/views/LoadingDialog;->a(IJ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseActivity;->c()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/f/c;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/base/BaseActivity;->a(Z)Z

    .line 67
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->a(Landroid/os/Bundle;)V

    .line 69
    :try_start_0
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/base/BaseActivity;->a:Lbutterknife/Unbinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 300
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 301
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/f/c;->c(Landroid/app/Activity;)V

    .line 302
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->a:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 87
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 319
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 320
    invoke-static {p1, p2, p3}, Lcom/phicomm/speaker/f/w;->a(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 313
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string p1, "DataChannel"

    const-string v0, "onRestoreInstanceState"

    .line 314
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 80
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public tv_back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090252
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/phicomm/speaker/base/BaseActivity;->c()V

    return-void
.end method

.method public tv_menu(Landroid/widget/TextView;)V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902a1
        }
    .end annotation

    .line 210
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->a(Landroid/widget/TextView;)V

    return-void
.end method
