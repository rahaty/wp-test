<?php $__env->startSection('main'); ?>
    <div class="settings-body mcloud-report-viewer">
        <div class="mcloud-report-selector">
            <label for="report">Report:</label>
            <select id="report" name="report">
                <?php $__currentLoopData = $allReports; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $url => $name): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <option value="<?php echo e($url); ?>"><?php echo e($name); ?></option>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </select>

        </div>
        <div class="mcloud-report-grid-container">

        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('../templates/sub-page', ['title' => $title], \MediaCloud\Vendor\Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/wp-content/plugins/ilab-media-tools/views/reports/report-viewer.blade.php ENDPATH**/ ?>