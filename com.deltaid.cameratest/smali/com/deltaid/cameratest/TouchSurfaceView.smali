.class public Lcom/deltaid/cameratest/TouchSurfaceView;
.super Landroid/view/SurfaceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deltaid/cameratest/TouchSurfaceView$a;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Matrix;

.field b:I

.field c:Landroid/graphics/PointF;

.field d:Landroid/graphics/PointF;

.field e:F

.field f:F

.field g:[F

.field h:I

.field i:I

.field j:F

.field protected k:F

.field protected l:F

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:Landroid/widget/LinearLayout;

.field s:Landroid/view/ScaleGestureDetector;

.field t:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->b:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->d:Landroid/graphics/PointF;

    iput v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->e:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->f:F

    iput v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    invoke-direct {p0, p1}, Lcom/deltaid/cameratest/TouchSurfaceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->b:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->d:Landroid/graphics/PointF;

    iput v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->e:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->f:F

    iput v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    invoke-direct {p0, p1}, Lcom/deltaid/cameratest/TouchSurfaceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/view/SurfaceView;->setClickable(Z)V

    iput-object p1, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->t:Landroid/content/Context;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/deltaid/cameratest/TouchSurfaceView$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deltaid/cameratest/TouchSurfaceView$a;-><init>(Lcom/deltaid/cameratest/TouchSurfaceView;Lcom/deltaid/cameratest/TouchSurfaceView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->s:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->a:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->g:[F

    new-instance v0, Lcom/deltaid/cameratest/TouchSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/deltaid/cameratest/TouchSurfaceView$1;-><init>(Lcom/deltaid/cameratest/TouchSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/TouchSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method a(FFF)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p3, p2

    if-gtz v1, :cond_1

    sub-float v1, p2, p3

    move v2, v0

    :goto_0
    cmpg-float v3, p1, v2

    if-gez v3, :cond_2

    neg-float v0, p1

    add-float/2addr v0, v2

    :cond_0
    :goto_1
    return v0

    :cond_1
    sub-float v1, p2, p3

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    neg-float v0, p1

    add-float/2addr v0, v1

    goto :goto_1
.end method

.method a()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->g:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->g:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->g:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->k:F

    iget v4, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    mul-float/2addr v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/deltaid/cameratest/TouchSurfaceView;->a(FFF)F

    move-result v0

    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->i:I

    int-to-float v2, v2

    iget v3, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->l:F

    iget v4, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    mul-float/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/deltaid/cameratest/TouchSurfaceView;->a(FFF)F

    move-result v1

    cmpl-float v2, v0, v5

    if-nez v2, :cond_0

    cmpl-float v2, v1, v5

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    return-void
.end method

.method b(FFF)F
    .locals 1

    cmpg-float v0, p3, p2

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/deltaid/cameratest/TouchSurfaceView;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/deltaid/cameratest/TouchSurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/deltaid/cameratest/TouchSurfaceView;->getHeight()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->h:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->i:I

    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->h:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->i:I

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->o:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->p:I

    if-eq v1, v2, :cond_5

    :cond_2
    iput v4, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    :cond_3
    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->i:I

    iput v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->n:I

    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->h:I

    iput v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->m:I

    iput v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->o:I

    iput v1, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->p:I

    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->j:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->h:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->i:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v3, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->i:I

    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float v1, v3, v1

    iget v3, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->h:I

    int-to-float v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v0, v3, v0

    div-float/2addr v1, v5

    div-float/2addr v0, v5

    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->h:I

    int-to-float v2, v2

    mul-float/2addr v0, v5

    sub-float v0, v2, v0

    iput v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->k:F

    iget v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->i:I

    int-to-float v0, v0

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->l:F

    :cond_4
    invoke-virtual {p0}, Lcom/deltaid/cameratest/TouchSurfaceView;->a()V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->m:I

    iget v3, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->h:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->n:I

    iget v3, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->i:I

    if-ne v2, v3, :cond_3

    goto :goto_0
.end method

.method public setCtrlsContainer(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->r:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setDeviceHeight(I)V
    .locals 0

    iput p1, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->q:I

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0

    iput p1, p0, Lcom/deltaid/cameratest/TouchSurfaceView;->f:F

    return-void
.end method
